package com.example.holiday.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Holiday_Translations")
public class HolidayTranslation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(name = "holiday_id", nullable = false)
    private Long holidayId;
    
    @Column(name = "language_id", nullable = false)
    private Long languageId;
    
    @Column(name = "name", length = 100, nullable = false)
    private String name;
    
    @Column(name = "type", length = 50, nullable = false)
    private String type;
    
    // Constructors
    public HolidayTranslation() {}
    
    public HolidayTranslation(Long holidayId, Long languageId, String name, String type) {
        this.holidayId = holidayId;
        this.languageId = languageId;
        this.name = name;
        this.type = type;
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
    
    public Long getLanguageId() {
        return languageId;
    }
    
    public void setLanguageId(Long languageId) {
        this.languageId = languageId;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getType() {
        return type;
    }
    
    public void setType(String type) {
        this.type = type;
    }
}
