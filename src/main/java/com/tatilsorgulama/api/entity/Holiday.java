package com.tatilsorgulama.api.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDate;

@Entity
@Table(name = "HOLIDAYS")
@Data
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
    
    // Birçok tatil tek bir ülkeye ait olabilir (Many-to-One)
    @ManyToOne(fetch = FetchType.LAZY) 
    @JoinColumn(name = "COUNTRY_ID") // Hangi kolon üzerinden birleşeceklerini belirtir
    private Country country;
}
