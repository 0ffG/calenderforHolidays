package com.tatilsorgulama.api.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "COUNTRIES")
@Data // Lombok: Getter, Setter, toString, EqualsAndHashCode metotlarını otomatik oluşturur
public class Country {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "COUNTRY_ID")
    private Integer countryId;

    @Column(name = "COUNTRY_NAME")
    private String countryName;
}
