package com.tatilsorgulama.api.repository;

import com.tatilsorgulama.api.entity.Country;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CountryRepository extends JpaRepository<Country, Integer> {
    // JpaRepository<Country, Integer> sayesinde temel CRUD operasyonları hazır gelir.
    // Country -> Bu repository'nin hangi entity için çalıştığını belirtir.
    // Integer -> Bu entity'nin Primary Key'inin veri tipini belirtir (Country'deki countryId'nin tipi).
}
