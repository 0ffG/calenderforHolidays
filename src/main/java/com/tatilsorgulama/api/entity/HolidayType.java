package com.tatilsorgulama.api.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import java.util.List;

@Entity
@Table(name = "HOLIDAY_TYPES")
@Getter
@Setter
public class HolidayType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;

    @Column(name = "CODE", unique = true, nullable = false, length = 50)
    private String code;

    @OneToMany(mappedBy = "holidayType")
    @JsonManagedReference
    private List<HolidayTypeTranslation> translations;
}
