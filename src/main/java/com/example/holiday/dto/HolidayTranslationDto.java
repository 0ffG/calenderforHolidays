package com.example.holiday.dto;

public class HolidayTranslationDto {
    private Long id;
    private Long holidayId;
    private Long languageId;
    private String name;
    private String type;

    public HolidayTranslationDto() {
    }

    public HolidayTranslationDto(Long id, Long holidayId, Long languageId, String name, String type) {
        this.id = id;
        this.holidayId = holidayId;
        this.languageId = languageId;
        this.name = name;
        this.type = type;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getHolidayId() {
        return holidayId;
    }

    public void setHolidayId(Long holidayId) {
        this.holidayId = holidayId;
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
