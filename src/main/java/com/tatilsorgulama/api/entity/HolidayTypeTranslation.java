package com.tatilsorgulama.api.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name = "HOLIDAY_TYPE_TRANSLATIONS", uniqueConstraints = {
        @UniqueConstraint(columnNames = {"HOLIDAY_TYPE_ID", "LANGUAGE_ID"})
})
@Getter
@Setter
public class HolidayTypeTranslation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "HOLIDAY_TYPE_ID")
    @JsonBackReference
    private HolidayType holidayType;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "LANGUAGE_ID")
    private Language language;

    @Column(name = "NAME", nullable = false, length = 100)
    private String name;
}
