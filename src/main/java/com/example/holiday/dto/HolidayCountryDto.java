package com.example.holiday.dto;

public class HolidayCountryDto {
    private Long id;
    private Long holidayId;
    private Long countryId;

    public HolidayCountryDto() {
    }

    public HolidayCountryDto(Long id, Long holidayId, Long countryId) {
        this.id = id;
        this.holidayId = holidayId;
        this.countryId = countryId;
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

    public Long getCountryId() {
        return countryId;
    }

    public void setCountryId(Long countryId) {
        this.countryId = countryId;
    }
}
