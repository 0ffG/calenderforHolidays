package com.example.holiday.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "holiday_dates_description")
public class HolidayDatesDescription {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "holiday_id", nullable = false)
    private Holiday holiday;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "date_id", nullable = false)
    private HolidayDates date;
    
    @Column(name = "is_half_day", nullable = false)
    private Boolean isHalfDay = false;
    
    @Column(name = "is_recurring", nullable = false)
    private Boolean isRecurring = false;
    
    @OneToMany(mappedBy = "description", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<HolidayDatesDescriptionTranslation> descriptions;
    
    @OneToMany(mappedBy = "dateDescription", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<HolidayTargetGroupMap> targetGroupMaps;
    
    // Constructors
    public HolidayDatesDescription() {}
    
    public HolidayDatesDescription(Holiday holiday, HolidayDates date, Boolean isHalfDay, Boolean isRecurring) {
        this.holiday = holiday;
        this.date = date;
        this.isHalfDay = isHalfDay;
        this.isRecurring = isRecurring;
    }
    
    // Getters and Setters
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public Holiday getHoliday() {
        return holiday;
    }
    
    public void setHoliday(Holiday holiday) {
        this.holiday = holiday;
    }
    
    public HolidayDates getDate() {
        return date;
    }
    
    public void setDate(HolidayDates date) {
        this.date = date;
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
    
    public List<HolidayDatesDescriptionTranslation> getDescriptions() {
        return descriptions;
    }
    
    public void setDescriptions(List<HolidayDatesDescriptionTranslation> descriptions) {
        this.descriptions = descriptions;
    }
    
    public List<HolidayTargetGroupMap> getTargetGroupMaps() {
        return targetGroupMaps;
    }
    
    public void setTargetGroupMaps(List<HolidayTargetGroupMap> targetGroupMaps) {
        this.targetGroupMaps = targetGroupMaps;
    }
}
