package com.tatilsorgulama.api.repository;

import com.tatilsorgulama.api.entity.HolidayDescription;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HolidayDescriptionRepository extends JpaRepository<HolidayDescription, Integer> {
}
