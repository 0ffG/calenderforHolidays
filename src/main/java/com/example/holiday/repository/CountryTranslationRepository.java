package com.example.holiday.repository;

import com.example.holiday.entity.CountryTranslation;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CountryTranslationRepository extends JpaRepository<CountryTranslation, Long> {
    List<CountryTranslation> findByLanguage_Code(String code);
}
