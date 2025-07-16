package com.example.holiday.dto;

public class CountryTranslationDto {
    private Long id;
    private Long countryId;
    private Long languageId;
    private String name;

    public CountryTranslationDto() {
    }

    public CountryTranslationDto(Long id, Long countryId, Long languageId, String name) {
        this.id = id;
        this.countryId = countryId;
        this.languageId = languageId;
        this.name = name;
    }

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
