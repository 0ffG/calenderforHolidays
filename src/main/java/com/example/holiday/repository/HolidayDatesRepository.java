package com.example.holiday.repository;

import com.example.holiday.entity.HolidayDates;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HolidayDatesRepository extends JpaRepository<HolidayDates, Long> {
}
