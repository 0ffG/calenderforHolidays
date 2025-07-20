package com.example.holiday.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Country_Translations")
public class CountryTranslation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(name = "country_id", nullable = false)
    private Long countryId;
    
    @Column(name = "language_id", nullable = false)
    private Long languageId;
    
    @Column(name = "name", length = 100, nullable = false)
    private String name;
    
    // Constructors
    public CountryTranslation() {}
    
    public CountryTranslation(Long countryId, Long languageId, String name) {
        this.countryId = countryId;
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
    
    public Long getCountryId() {
        return countryId;
    }
    
    public void setCountryId(Long countryId) {
        this.countryId = countryId;
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