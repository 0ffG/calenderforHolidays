package com.example.holiday.repository;

import com.example.holiday.entity.HolidayTargetGroupTranslation;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface HolidayTargetGroupTranslationRepository extends JpaRepository<HolidayTargetGroupTranslation, Long> {
    List<HolidayTargetGroupTranslation> findByLanguage_Code(String code);
}
