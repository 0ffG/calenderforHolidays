package com.example.holiday.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "holiday_countries")
public class HolidayCountry {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "holiday_id", nullable = false)
    private Holiday holiday;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "country_id", nullable = false)
    private Country country;
    
    // scope ve region_name istersen eklenebilir
    
    // Constructors
    public HolidayCountry() {}
    
    public HolidayCountry(Holiday holiday, Country country) {
        this.holiday = holiday;
        this.country = country;
    }
    
    // Getters and Setters
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public Holiday getHoliday() {
        return holiday;
    }
    
    public void setHoliday(Holiday holiday) {
        this.holiday = holiday;
    }
    
    public Country getCountry() {
        return country;
    }
    
    public void setCountry(Country country) {
        this.country = country;
    }
}
