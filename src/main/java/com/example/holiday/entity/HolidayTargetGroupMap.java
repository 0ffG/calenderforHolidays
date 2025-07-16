package com.example.holiday.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "holiday_target_group_map")
public class HolidayTargetGroupMap {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "date_description_id", nullable = false)
    private HolidayDatesDescription dateDescription;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "target_group_id", nullable = false)
    private HolidayTargetGroup targetGroup;
    
    // Constructors
    public HolidayTargetGroupMap() {}
    
    public HolidayTargetGroupMap(HolidayDatesDescription dateDescription, HolidayTargetGroup targetGroup) {
        this.dateDescription = dateDescription;
        this.targetGroup = targetGroup;
    }
    
    // Getters and Setters
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public HolidayDatesDescription getDateDescription() {
        return dateDescription;
    }
    
    public void setDateDescription(HolidayDatesDescription dateDescription) {
        this.dateDescription = dateDescription;
    }
    
    public HolidayTargetGroup getTargetGroup() {
        return targetGroup;
    }
    
    public void setTargetGroup(HolidayTargetGroup targetGroup) {
        this.targetGroup = targetGroup;
    }
}
