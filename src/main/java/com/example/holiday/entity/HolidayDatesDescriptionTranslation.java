package com.example.holiday.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Holiday_Dates_Description_Translations")
public class HolidayDatesDescriptionTranslation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(name = "description_id", nullable = false)
    private Long descriptionId;
    
    @Column(name = "language_id", nullable = false)
    private Long languageId;
    
    @Lob
    @Column(name = "description", nullable = false)
    private String description;
    
    // Constructors
    public HolidayDatesDescriptionTranslation() {}
    
    public HolidayDatesDescriptionTranslation(Long descriptionId, Long languageId, String description) {
        this.descriptionId = descriptionId;
        this.languageId = languageId;
        this.description = description;
    }
    
    // Getters and Setters
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public Long getDescriptionId() {
        return descriptionId;
    }
    
    public void setDescriptionId(Long descriptionId) {
        this.descriptionId = descriptionId;
    }
    
    public Long getLanguageId() {
        return languageId;
    }
    
    public void setLanguageId(Long languageId) {
        this.languageId = languageId;
    }
    
    public String getDescription() {
        return description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
}