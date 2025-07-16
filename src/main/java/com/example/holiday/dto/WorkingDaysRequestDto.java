package com.example.holiday.dto;

import java.time.LocalDate;

public class WorkingDaysRequestDto {
    private LocalDate startDate;
    private LocalDate endDate;
    private String workplaceType;
    private Long targetGroupId;
    private Long countryId;
    private String language;

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

    public String getWorkplaceType() {
        return workplaceType;
    }

    public void setWorkplaceType(String workplaceType) {
        this.workplaceType = workplaceType;
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

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }
}
