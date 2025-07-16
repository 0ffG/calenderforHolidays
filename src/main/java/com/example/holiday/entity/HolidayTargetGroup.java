package com.example.holiday.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "holiday_target_groups")
public class HolidayTargetGroup {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @OneToMany(mappedBy = "targetGroup", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<HolidayTargetGroupTranslation> targetGroupTranslations;
    
    @OneToMany(mappedBy = "targetGroup", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<HolidayTargetGroupMap> targetGroupMaps;
    
    // Constructors
    public HolidayTargetGroup() {}
    
    // Getters and Setters
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public List<HolidayTargetGroupTranslation> getTargetGroupTranslations() {
        return targetGroupTranslations;
    }
    
    public void setTargetGroupTranslations(List<HolidayTargetGroupTranslation> targetGroupTranslations) {
        this.targetGroupTranslations = targetGroupTranslations;
    }
    
    public List<HolidayTargetGroupMap> getTargetGroupMaps() {
        return targetGroupMaps;
    }
    
    public void setTargetGroupMaps(List<HolidayTargetGroupMap> targetGroupMaps) {
        this.targetGroupMaps = targetGroupMaps;
    }
}
