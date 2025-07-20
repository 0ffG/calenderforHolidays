package com.example.holiday.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Holiday_Dates_Description")
public class HolidayDatesDescription {
    @Id
    private Long id;
    
    @Column(name = "holiday_id", nullable = false)
    private Long holidayId;
    
    @Column(name = "date_id", nullable = false)
    private Long dateId;
    
    @Column(name = "is_recurring")
    private Integer isRecurring;
    
    // Constructors
    public HolidayDatesDescription() {}
    
    public HolidayDatesDescription(Long id, Long holidayId, Long dateId, Integer isRecurring) {
        this.id = id;
        this.holidayId = holidayId;
        this.dateId = dateId;
        this.isRecurring = isRecurring;
    }
    
    // Getters and Setters
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
    
    public Integer getIsRecurring() {
        return isRecurring;
    }
    
    public void setIsRecurring(Integer isRecurring) {
        this.isRecurring = isRecurring;
    }
}