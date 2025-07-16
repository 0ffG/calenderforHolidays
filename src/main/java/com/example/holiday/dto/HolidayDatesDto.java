package com.example.holiday.dto;

import java.time.LocalDate;

public class HolidayDatesDto {
    private Long id;
    private LocalDate date;

    public HolidayDatesDto() {
    }

    public HolidayDatesDto(Long id, LocalDate date) {
        this.id = id;
        this.date = date;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }
}
