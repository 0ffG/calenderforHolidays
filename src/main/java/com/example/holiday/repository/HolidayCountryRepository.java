package com.example.holiday.repository;

import com.example.holiday.entity.HolidayCountry;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HolidayCountryRepository extends JpaRepository<HolidayCountry, Long> {
}
