package com.tatilsorgulama.api.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "HOLIDAY_TYPE_TRANSLATIONS", uniqueConstraints = {
        @UniqueConstraint(columnNames = {"HOLIDAY_TYPE_ID", "LANGUAGE_CODE"})
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
    private HolidayType holidayType;

    @Column(name = "LANGUAGE_CODE", nullable = false, length = 5)
    private String languageCode;

    @Column(name = "NAME", nullable = false, length = 100)
    private String name;
}
