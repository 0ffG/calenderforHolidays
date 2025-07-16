package com.example.holiday.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "countries")
public class Country {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @OneToMany(mappedBy = "country", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<CountryTranslation> countryTranslations;
    
    @OneToMany(mappedBy = "country", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<HolidayCountry> holidayCountries;
    
    // Constructors
    public Country() {}
    
    // Getters and Setters
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public List<CountryTranslation> getCountryTranslations() {
        return countryTranslations;
    }
    
    public void setCountryTranslations(List<CountryTranslation> countryTranslations) {
        this.countryTranslations = countryTranslations;
    }
    
    public List<HolidayCountry> getHolidayCountries() {
        return holidayCountries;
    }
    
    public void setHolidayCountries(List<HolidayCountry> holidayCountries) {
        this.holidayCountries = holidayCountries;
    }
}
