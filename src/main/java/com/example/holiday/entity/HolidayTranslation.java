package com.example.holiday.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "holiday_translations")
public class HolidayTranslation {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "holiday_id", nullable = false)
    private Holiday holiday;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "language_id", nullable = false)
    private Language language;
    
    @Column(length = 100, nullable = false)
    private String name;
    
    @Column(length = 50, nullable = false)
    private String type; // Örn: National, Religious, Local
    
    // Constructors
    public HolidayTranslation() {}
    
    public HolidayTranslation(Holiday holiday, Language language, String name, String type) {
        this.holiday = holiday;
        this.language = language;
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
    
    public Holiday getHoliday() {
        return holiday;
    }
    
    public void setHoliday(Holiday holiday) {
        this.holiday = holiday;
    }
    
    public Language getLanguage() {
        return language;
    }
    
    public void setLanguage(Language language) {
        this.language = language;
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
