package com.tatilsorgulama.api.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "HOLIDAYS")
@Getter // @Data yerine sadece @Getter ve @Setter kullanıyoruz
@Setter
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"}) 
public class Holiday {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "HOLIDAY_ID")
    private Integer holidayId;

    @Column(name = "HOLIDAY_NAME")
    private String holidayName;

    @Column(name = "HOLIDAY_TYPE")
    private String holidayType;

    @Column(name = "HOLIDAY_DATE")
    private LocalDate holidayDate;

    @Column(name = "DURATION_DAYS")
    private Float durationDays;

    @Column(name = "APPLIES_TO_SECTOR")
    private String appliesToSector;
    
    @JsonBackReference
    @ManyToOne(fetch = FetchType.LAZY) 
    @JoinColumn(name = "COUNTRY_ID") // Hangi kolon üzerinden birleşeceklerini belirtir
    private Country country;
}
