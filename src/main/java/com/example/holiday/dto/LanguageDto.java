package com.example.holiday.dto;

public class LanguageDto {
    private Long id;
    private String code;

    public LanguageDto() {
    }

    public LanguageDto(Long id, String code) {
        this.id = id;
        this.code = code;
    }

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
}
