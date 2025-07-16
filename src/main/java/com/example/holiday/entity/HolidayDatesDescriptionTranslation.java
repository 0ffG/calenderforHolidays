package com.example.holiday.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "holiday_dates_description_translations")
public class HolidayDatesDescriptionTranslation {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "description_id", nullable = false)
    private HolidayDatesDescription description;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "language_id", nullable = false)
    private Language language;
    
    @Column(nullable = false, columnDefinition = "TEXT")
    private String description_text;
    
    // Constructors
    public HolidayDatesDescriptionTranslation() {}
    
    public HolidayDatesDescriptionTranslation(HolidayDatesDescription description, Language language, String descriptionText) {
        this.description = description;
        this.language = language;
        this.description_text = descriptionText;
    }
    
    // Getters and Setters
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public HolidayDatesDescription getDescription() {
        return description;
    }
    
    public void setDescription(HolidayDatesDescription description) {
        this.description = description;
    }
    
    public Language getLanguage() {
        return language;
    }
    
    public void setLanguage(Language language) {
        this.language = language;
    }
    
    public String getDescriptionText() {
        return description_text;
    }
    
    public void setDescriptionText(String descriptionText) {
        this.description_text = descriptionText;
    }
}
