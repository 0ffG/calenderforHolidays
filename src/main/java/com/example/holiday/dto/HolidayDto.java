package com.example.holiday.dto;

public class HolidayDto {
    private Long id;

    public HolidayDto() {
    }

    public HolidayDto(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
