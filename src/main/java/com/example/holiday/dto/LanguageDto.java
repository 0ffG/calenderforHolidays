package com.example.holiday.dto;

public class LanguageDto {
    private Long id;
    private String code;
    private String name;
    
    // Constructors
    public LanguageDto() {}
    
    public LanguageDto(Long id, String code, String name) {
        this.id = id;
        this.code = code;
        this.name = name;
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
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
}