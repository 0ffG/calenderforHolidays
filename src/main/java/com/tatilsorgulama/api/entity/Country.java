package com.tatilsorgulama.api.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "COUNTRIES")
@Getter // @Data yerine sadece @Getter ve @Setter kullanıyoruz
@Setter
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Country {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "COUNTRY_ID")
    private Integer countryId;

    @Column(name = "COUNTRY_NAME")
    private String countryName;
}
