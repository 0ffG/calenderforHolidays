package com.tatilsorgulama.api.repository;

import com.tatilsorgulama.api.entity.HolidayTypeTranslation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HolidayTypeTranslationRepository extends JpaRepository<HolidayTypeTranslation, Integer> {
}
