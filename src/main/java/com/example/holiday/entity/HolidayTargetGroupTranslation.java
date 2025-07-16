package com.example.holiday.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "holiday_target_group_translations")
public class HolidayTargetGroupTranslation {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "target_group_id", nullable = false)
    private HolidayTargetGroup targetGroup;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "language_id", nullable = false)
    private Language language;
    
    @Column(length = 100, nullable = false)
    private String name;
    
    // Constructors
    public HolidayTargetGroupTranslation() {}
    
    public HolidayTargetGroupTranslation(HolidayTargetGroup targetGroup, Language language, String name) {
        this.targetGroup = targetGroup;
        this.language = language;
        this.name = name;
    }
    
    // Getters and Setters
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public HolidayTargetGroup getTargetGroup() {
        return targetGroup;
    }
    
    public void setTargetGroup(HolidayTargetGroup targetGroup) {
        this.targetGroup = targetGroup;
    }
    
    public Language getLanguage() {
        return language;
    }
    
    public void setLanguage(Language language) {
        this.language = language;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
}
