package com.example.holiday.dto;

import java.time.LocalDate;
import java.util.List;

public class WorkingDayCalculationResponse {
    private LocalDate startDate;
    private LocalDate endDate;
    private int totalDays;
    private int weekendDays;
    private int holidayDays;
    private double workingDays; // Yarım günlü tatilleri hesaba katmak için double
    private List<HolidayInfo> holidays;
    
    // Inner class for holiday information
    public static class HolidayInfo {
        private LocalDate date;
        private String name;
        private boolean isHalfDay;
        
        public HolidayInfo() {}
        
        public HolidayInfo(LocalDate date, String name, boolean isHalfDay) {
            this.date = date;
            this.name = name;
            this.isHalfDay = isHalfDay;
        }
        
        // Getters and Setters
        public LocalDate getDate() {
            return date;
        }
        
        public void setDate(LocalDate date) {
            this.date = date;
        }
        
        public String getName() {
            return name;
        }
        
        public void setName(String name) {
            this.name = name;
        }
        
        public boolean isHalfDay() {
            return isHalfDay;
        }
        
        public void setHalfDay(boolean halfDay) {
            isHalfDay = halfDay;
        }
    }
    
    // Constructors
    public WorkingDayCalculationResponse() {}
    
    // Getters and Setters
    public LocalDate getStartDate() {
        return startDate;
    }
    
    public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }
    
    public LocalDate getEndDate() {
        return endDate;
    }
    
    public void setEndDate(LocalDate endDate) {
        this.endDate = endDate;
    }
    
    public int getTotalDays() {
        return totalDays;
    }
    
    public void setTotalDays(int totalDays) {
        this.totalDays = totalDays;
    }
    
    public int getWeekendDays() {
        return weekendDays;
    }
    
    public void setWeekendDays(int weekendDays) {
        this.weekendDays = weekendDays;
    }
    
    public int getHolidayDays() {
        return holidayDays;
    }
    
    public void setHolidayDays(int holidayDays) {
        this.holidayDays = holidayDays;
    }
    
    public double getWorkingDays() {
        return workingDays;
    }
    
    public void setWorkingDays(double workingDays) {
        this.workingDays = workingDays;
    }
    
    public List<HolidayInfo> getHolidays() {
        return holidays;
    }
    
    public void setHolidays(List<HolidayInfo> holidays) {
        this.holidays = holidays;
    }
}