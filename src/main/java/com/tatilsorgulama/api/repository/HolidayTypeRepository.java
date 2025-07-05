package com.tatilsorgulama.api.repository;

import com.tatilsorgulama.api.entity.HolidayType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HolidayTypeRepository extends JpaRepository<HolidayType, Integer> {
}
