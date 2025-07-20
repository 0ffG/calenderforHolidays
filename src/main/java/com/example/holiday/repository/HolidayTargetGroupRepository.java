package com.example.holiday.repository;

import com.example.holiday.entity.HolidayTargetGroup;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HolidayTargetGroupRepository extends JpaRepository<HolidayTargetGroup, Long> {
}