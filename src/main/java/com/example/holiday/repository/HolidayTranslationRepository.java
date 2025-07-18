package com.example.holiday.repository;

import com.example.holiday.entity.HolidayTranslation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HolidayTranslationRepository extends JpaRepository<HolidayTranslation, Long> {
}
