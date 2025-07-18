package com.example.holiday.repository;

import com.example.holiday.entity.CountryTranslation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CountryTranslationRepository extends JpaRepository<CountryTranslation, Long> {
}
