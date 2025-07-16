package com.example.holiday.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "languages")
public class Language {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(length = 10, nullable = false, unique = true)
    private String code; // Örn: en, tr, fr
    
    @OneToMany(mappedBy = "language", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<CountryTranslation> countryTranslations;
    
    @OneToMany(mappedBy = "language", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<HolidayTranslation> holidayTranslations;
    
    @OneToMany(mappedBy = "language", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<HolidayDatesDescriptionTranslation> holidayDatesDescriptionTranslations;
    
    @OneToMany(mappedBy = "language", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<HolidayTargetGroupTranslation> holidayTargetGroupTranslations;
    
    // Constructors
    public Language() {}
    
    public Language(String code) {
        this.code = code;
    }
    
    // Getters and Setters
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public String getCode() {
        return code;
    }
    
    public void setCode(String code) {
        this.code = code;
    }
    
    public List<CountryTranslation> getCountryTranslations() {
        return countryTranslations;
    }
    
    public void setCountryTranslations(List<CountryTranslation> countryTranslations) {
        this.countryTranslations = countryTranslations;
    }
    
    public List<HolidayTranslation> getHolidayTranslations() {
        return holidayTranslations;
    }
    
    public void setHolidayTranslations(List<HolidayTranslation> holidayTranslations) {
        this.holidayTranslations = holidayTranslations;
    }
    
    public List<HolidayDatesDescriptionTranslation> getHolidayDatesDescriptionTranslations() {
        return holidayDatesDescriptionTranslations;
    }
    
    public void setHolidayDatesDescriptionTranslations(List<HolidayDatesDescriptionTranslation> holidayDatesDescriptionTranslations) {
        this.holidayDatesDescriptionTranslations = holidayDatesDescriptionTranslations;
    }
    
    public List<HolidayTargetGroupTranslation> getHolidayTargetGroupTranslations() {
        return holidayTargetGroupTranslations;
    }
    
    public void setHolidayTargetGroupTranslations(List<HolidayTargetGroupTranslation> holidayTargetGroupTranslations) {
        this.holidayTargetGroupTranslations = holidayTargetGroupTranslations;
    }
}
