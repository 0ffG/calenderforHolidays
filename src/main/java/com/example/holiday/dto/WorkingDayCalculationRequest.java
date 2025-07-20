package com.example.holiday.dto;

import java.time.LocalDate;

public class WorkingDayCalculationRequest {
    private LocalDate startDate;
    private LocalDate endDate;
    private Long targetGroupId;
    private Long countryId;
    
    // Constructors
    public WorkingDayCalculationRequest() {}
    
    public WorkingDayCalculationRequest(LocalDate startDate, LocalDate endDate, Long targetGroupId, Long countryId) {
        this.startDate = startDate;
        this.endDate = endDate;
        this.targetGroupId = targetGroupId;
        this.countryId = countryId;
    }
    
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
    
    public Long getTargetGroupId() {
        return targetGroupId;
    }
    
    public void setTargetGroupId(Long targetGroupId) {
        this.targetGroupId = targetGroupId;
    }
    
    public Long getCountryId() {
        return countryId;
    }
    
    public void setCountryId(Long countryId) {
        this.countryId = countryId;
    }
}