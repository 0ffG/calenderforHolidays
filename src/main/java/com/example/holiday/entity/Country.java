package com.example.holiday.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Countries")
public class Country {
    @Id
    private Long id;
    
    @Column(name = "default_name", length = 100, nullable = false)
    private String defaultName;
    
    // Constructors
    public Country() {}
    
    public Country(Long id, String defaultName) {
        this.id = id;
        this.defaultName = defaultName;
    }
    
    // Getters and Setters
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public String getDefaultName() {
        return defaultName;
    }
    
    public void setDefaultName(String defaultName) {
        this.defaultName = defaultName;
    }
}