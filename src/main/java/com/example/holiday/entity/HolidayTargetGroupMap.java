package com.example.holiday.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Holiday_Target_Group_Map")
public class HolidayTargetGroupMap {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(name = "date_description_id", nullable = false)
    private Long dateDescriptionId;
    
    @Column(name = "target_group_id", nullable = false)
    private Long targetGroupId;
    
    @Column(name = "is_half_day", nullable = false)
    private Integer isHalfDay; // 0: Tam gün tatil, 1: Yarım gün tatil
    
    // Constructors
    public HolidayTargetGroupMap() {}
    
    public HolidayTargetGroupMap(Long dateDescriptionId, Long targetGroupId, Integer isHalfDay) {
        this.dateDescriptionId = dateDescriptionId;
        this.targetGroupId = targetGroupId;
        this.isHalfDay = isHalfDay;
    }
    
    // Getters and Setters
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public Long getDateDescriptionId() {
        return dateDescriptionId;
    }
    
    public void setDateDescriptionId(Long dateDescriptionId) {
        this.dateDescriptionId = dateDescriptionId;
    }
    
    public Long getTargetGroupId() {
        return targetGroupId;
    }
    
    public void setTargetGroupId(Long targetGroupId) {
        this.targetGroupId = targetGroupId;
    }
    
    public Integer getIsHalfDay() {
        return isHalfDay;
    }
    
    public void setIsHalfDay(Integer isHalfDay) {
        this.isHalfDay = isHalfDay;
    }
}