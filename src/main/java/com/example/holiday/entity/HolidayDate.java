package com.example.holiday.entity;

import jakarta.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "Holiday_Dates")
public class HolidayDate {
    @Id
    private Long id;
    
    @Column(name = "holiday_date", nullable = false)
    private LocalDate holidayDate;
    
    // Constructors
    public HolidayDate() {}
    
    public HolidayDate(Long id, LocalDate holidayDate) {
        this.id = id;
        this.holidayDate = holidayDate;
    }
    
    // Getters and Setters
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public LocalDate getHolidayDate() {
        return holidayDate;
    }
    
    public void setHolidayDate(LocalDate holidayDate) {
        this.holidayDate = holidayDate;
    }
}