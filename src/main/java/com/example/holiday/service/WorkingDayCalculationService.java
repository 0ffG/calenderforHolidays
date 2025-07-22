package com.example.holiday.service;

import com.example.holiday.dto.WorkingDayCalculationRequest;
import com.example.holiday.dto.WorkingDayCalculationResponse;
import com.example.holiday.dto.WorkingDayCalculationResponse.HolidayInfo;
import com.example.holiday.repository.WorkingDayRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;

@Service
public class WorkingDayCalculationService {
    
    @Autowired
    private WorkingDayRepository workingDayRepository;
    
    public WorkingDayCalculationResponse calculateWorkingDays(WorkingDayCalculationRequest request, String languageCode) {
        Long languageId = getLanguageId(languageCode);
        
        // Fetch holidays for the given criteria
        List<Object[]> holidayResults = workingDayRepository.findHolidaysForCalculation(
            request.getTargetGroupId(),
            request.getCountryId(),
            languageId,
            request.getStartDate(),
            request.getEndDate()
        );
        
        // Convert to HolidayInfo objects
        List<HolidayInfo> holidays = new ArrayList<>();
        for (Object[] result : holidayResults) {
            LocalDate date;
            if (result[0] instanceof java.sql.Date) {
                date = ((java.sql.Date) result[0]).toLocalDate();
            } else if (result[0] instanceof java.sql.Timestamp) {
                date = ((java.sql.Timestamp) result[0]).toLocalDateTime().toLocalDate();
            } else {
                throw new RuntimeException("Unexpected date type: " + result[0].getClass());
            }
            String name = (String) result[1];
            boolean isHalfDay = ((Number) result[2]).intValue() == 1;
            holidays.add(new HolidayInfo(date, name, isHalfDay));
        }
        
        // Calculate working days
        return calculateWorkingDaysWithHolidays(request.getStartDate(), request.getEndDate(), holidays);
    }
    
    private WorkingDayCalculationResponse calculateWorkingDaysWithHolidays(LocalDate startDate, LocalDate endDate, List<HolidayInfo> holidays) {
        WorkingDayCalculationResponse response = new WorkingDayCalculationResponse();
        response.setStartDate(startDate);
        response.setEndDate(endDate);
        response.setHolidays(holidays);
        
        // Calculate total days
        int totalDays = (int) ChronoUnit.DAYS.between(startDate, endDate) + 1;
        response.setTotalDays(totalDays);
        
        // Calculate weekend days
        int weekendDays = 0;
        LocalDate current = startDate;
        while (!current.isAfter(endDate)) {
            if (current.getDayOfWeek() == DayOfWeek.SATURDAY || current.getDayOfWeek() == DayOfWeek.SUNDAY) {
                weekendDays++;
            }
            current = current.plusDays(1);
        }
        response.setWeekendDays(weekendDays);
        
        // Calculate holiday days and working days
        int fullDayHolidays = 0;
        double halfDayHolidays = 0;
        
        for (HolidayInfo holiday : holidays) {
            // Skip holidays that fall on weekends (already counted)
            if (holiday.getDate().getDayOfWeek() == DayOfWeek.SATURDAY || 
                holiday.getDate().getDayOfWeek() == DayOfWeek.SUNDAY) {
                continue;
            }
            
            if (holiday.isHalfDay()) {
                halfDayHolidays += 0.5;
            } else {
                fullDayHolidays++;
            }
        }
        
        response.setHolidayDays(fullDayHolidays);
        
        // Working days = Total days - Weekend days - Full day holidays - Half day holidays
        double workingDays = totalDays - weekendDays - fullDayHolidays - halfDayHolidays;
        response.setWorkingDays(workingDays);
        
        return response;
    }
    
    private Long getLanguageId(String languageCode) {
        // 'tr' -> 1, 'en' -> 2 based on data.sql
        return "tr".equals(languageCode) ? 1L : 2L;
    }
}