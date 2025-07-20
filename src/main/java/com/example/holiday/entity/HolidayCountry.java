package com.example.holiday.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Holiday_Countries")
public class HolidayCountry {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(name = "holiday_id", nullable = false)
    private Long holidayId;
    
    @Column(name = "country_id", nullable = false)
    private Long countryId;
    
    // Constructors
    public HolidayCountry() {}
    
    public HolidayCountry(Long holidayId, Long countryId) {
        this.holidayId = holidayId;
        this.countryId = countryId;
    }
    
    // Getters and Setters
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