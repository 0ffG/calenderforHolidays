package com.example.holiday.dto;

public class HolidayDatesDescriptionTranslationDto {
    private Long id;
    private Long descriptionId;
    private Long languageId;
    private String descriptionText;

    public HolidayDatesDescriptionTranslationDto() {
    }

    public HolidayDatesDescriptionTranslationDto(Long id, Long descriptionId, Long languageId, String descriptionText) {
        this.id = id;
        this.descriptionId = descriptionId;
        this.languageId = languageId;
        this.descriptionText = descriptionText;
    }

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

    public String getDescriptionText() {
        return descriptionText;
    }

    public void setDescriptionText(String descriptionText) {
        this.descriptionText = descriptionText;
    }
}
