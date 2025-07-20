package com.example.holiday.repository;

import com.example.holiday.entity.CountryTranslation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CountryTranslationRepository extends JpaRepository<CountryTranslation, Long> {
    
    @Query("SELECT ct FROM CountryTranslation ct WHERE ct.languageId = :languageId")
    List<CountryTranslation> findByLanguageId(@Param("languageId") Long languageId);
    
    @Query("SELECT ct FROM CountryTranslation ct WHERE ct.countryId = :countryId AND ct.languageId = :languageId")
    CountryTranslation findByCountryIdAndLanguageId(@Param("countryId") Long countryId, @Param("languageId") Long languageId);
}
