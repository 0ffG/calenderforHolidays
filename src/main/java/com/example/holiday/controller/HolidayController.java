package com.example.holiday.controller;

import com.example.holiday.dto.WorkingDayCalculationResponse.HolidayInfo;
import com.example.holiday.repository.WorkingDayRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*")
public class HolidayController {
    
    @Autowired
    private WorkingDayRepository workingDayRepository;
    
    @GetMapping("/holidays")
    public ResponseEntity<List<HolidayInfo>> getHolidays(
            @RequestParam Long countryId,
            @RequestParam(required = false) Long targetGroupId,
            @RequestParam(required = false) @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate startDate,
            @RequestParam(required = false) @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate endDate,
            @RequestParam(defaultValue = "tr") String lang) {
        
        Long languageId = getLanguageId(lang);
        List<Object[]> holidayResults;
        
        // If targetGroupId and date range are provided, use the specific query
        if (targetGroupId != null && startDate != null && endDate != null) {
            holidayResults = workingDayRepository.findHolidaysForCalculation(
                targetGroupId, countryId, languageId, startDate, endDate
            );
        } else {
            // Otherwise, get all holidays for the country
            holidayResults = workingDayRepository.findAllHolidaysByCountry(countryId, languageId);
        }
        
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
        
        return ResponseEntity.ok(holidays);
    }
    
    private Long getLanguageId(String languageCode) {
        return "tr".equals(languageCode) ? 1L : 2L;
    }
}
