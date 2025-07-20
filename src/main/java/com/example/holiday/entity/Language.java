package com.example.holiday.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Languages")
public class Language {
    @Id
    private Long id;
    
    @Column(name = "code", length = 10, nullable = false, unique = true)
    private String code;
    
    // Constructors
    public Language() {}
    
    public Language(Long id, String code) {
        this.id = id;
        this.code = code;
    }
    
    // Getters and Setters
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public String getCode() {
        return code;
    }
    
    public void setCode(String code) {
        this.code = code;
    }
}
