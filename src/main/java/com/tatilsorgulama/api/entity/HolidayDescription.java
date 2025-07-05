package com.tatilsorgulama.api.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "HOLIDAY_DESCRIPTIONS", uniqueConstraints = {
        @UniqueConstraint(columnNames = {"HOLIDAY_ID", "LANGUAGE_CODE"})
})
@Getter
@Setter
public class HolidayDescription {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "HOLIDAY_ID")
    private Holiday holiday;

    @Column(name = "LANGUAGE_CODE", nullable = false, length = 5)
    private String languageCode;

    @Column(name = "NAME", nullable = false, length = 150)
    private String name;

    @Lob
    @Column(name = "DESCRIPTION", nullable = false)
    private String description;
}
