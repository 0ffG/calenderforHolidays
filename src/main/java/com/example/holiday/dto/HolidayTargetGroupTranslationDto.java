package com.example.holiday.dto;

public class HolidayTargetGroupTranslationDto {
    private Long id;
    private Long targetGroupId;
    private Long languageId;
    private String name;

    public HolidayTargetGroupTranslationDto() {
    }

    public HolidayTargetGroupTranslationDto(Long id, Long targetGroupId, Long languageId, String name) {
        this.id = id;
        this.targetGroupId = targetGroupId;
        this.languageId = languageId;
        this.name = name;
    }

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
