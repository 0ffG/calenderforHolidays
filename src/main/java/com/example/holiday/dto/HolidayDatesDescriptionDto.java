package com.example.holiday.dto;

public class HolidayDatesDescriptionDto {
    private Long id;
    private Long holidayId;
    private Long dateId;
    private Boolean isHalfDay;
    private Boolean isRecurring;

    public HolidayDatesDescriptionDto() {
    }

    public HolidayDatesDescriptionDto(Long id, Long holidayId, Long dateId, Boolean isHalfDay, Boolean isRecurring) {
        this.id = id;
        this.holidayId = holidayId;
        this.dateId = dateId;
        this.isHalfDay = isHalfDay;
        this.isRecurring = isRecurring;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getHolidayId() {
        return holidayId;
    }

    public void setHolidayId(Long holidayId) {
        this.holidayId = holidayId;
    }

    public Long getDateId() {
        return dateId;
    }

    public void setDateId(Long dateId) {
        this.dateId = dateId;
    }

    public Boolean getIsHalfDay() {
        return isHalfDay;
    }

    public void setIsHalfDay(Boolean isHalfDay) {
        this.isHalfDay = isHalfDay;
    }

    public Boolean getIsRecurring() {
        return isRecurring;
    }

    public void setIsRecurring(Boolean isRecurring) {
        this.isRecurring = isRecurring;
    }
}
