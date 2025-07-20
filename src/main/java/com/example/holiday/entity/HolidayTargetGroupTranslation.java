package com.example.holiday.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Holiday_Target_Group_Translations")
public class HolidayTargetGroupTranslation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(name = "target_group_id", nullable = false)
    private Long targetGroupId;
    
    @Column(name = "language_id", nullable = false)
    private Long languageId;
    
    @Column(name = "name", length = 100, nullable = false)
    private String name;
    
    // Constructors
    public HolidayTargetGroupTranslation() {}
    
    public HolidayTargetGroupTranslation(Long targetGroupId, Long languageId, String name) {
        this.targetGroupId = targetGroupId;
        this.languageId = languageId;
        this.name = name;
    }
    
    // Getters and Setters
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public Long getTargetGroupId() {
        return targetGroupId;
    }
    
    public void setTargetGroupId(Long targetGroupId) {
        this.targetGroupId = targetGroupId;
    }
    
    public Long getLanguageId() {
        return languageId;
    }
    
    public void setLanguageId(Long languageId) {
        this.languageId = languageId;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
}