package com.example.holiday.dto;

public class CountryDto {
    private Long id;

    public CountryDto() {
    }

    public CountryDto(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
