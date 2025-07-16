package com.example.holiday.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "holidays")
public class Holiday {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @OneToMany(mappedBy = "holiday", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<HolidayTranslation> holidayTranslations;
    
    @OneToMany(mappedBy = "holiday", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<HolidayDatesDescription> holidayDatesDescriptions;
    
    @OneToMany(mappedBy = "holiday", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<HolidayCountry> holidayCountries;
    
    // Constructors
    public Holiday() {}
    
    // Getters and Setters
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public List<HolidayTranslation> getHolidayTranslations() {
        return holidayTranslations;
    }
    
    public void setHolidayTranslations(List<HolidayTranslation> holidayTranslations) {
        this.holidayTranslations = holidayTranslations;
    }
    
    public List<HolidayDatesDescription> getHolidayDatesDescriptions() {
        return holidayDatesDescriptions;
    }
    
    public void setHolidayDatesDescriptions(List<HolidayDatesDescription> holidayDatesDescriptions) {
        this.holidayDatesDescriptions = holidayDatesDescriptions;
    }
    
    public List<HolidayCountry> getHolidayCountries() {
        return holidayCountries;
    }
    
    public void setHolidayCountries(List<HolidayCountry> holidayCountries) {
        this.holidayCountries = holidayCountries;
    }
}
