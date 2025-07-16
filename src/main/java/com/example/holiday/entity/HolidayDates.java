package com.example.holiday.entity;

import jakarta.persistence.*;
import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name = "holiday_dates")
public class HolidayDates {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(nullable = false)
    private LocalDate date;
    
    @OneToMany(mappedBy = "date", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<HolidayDatesDescription> holidayDatesDescriptions;
    
    // Constructors
    public HolidayDates() {}
    
    public HolidayDates(LocalDate date) {
        this.date = date;
    }
    
    // Getters and Setters
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
    
    public List<HolidayDatesDescription> getHolidayDatesDescriptions() {
        return holidayDatesDescriptions;
    }
    
    public void setHolidayDatesDescriptions(List<HolidayDatesDescription> holidayDatesDescriptions) {
        this.holidayDatesDescriptions = holidayDatesDescriptions;
    }
}
