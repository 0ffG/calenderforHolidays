package com.example.holiday.repository;

import com.example.holiday.entity.HolidayTargetGroupMap;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface HolidayTargetGroupMapRepository extends JpaRepository<HolidayTargetGroupMap, Long> {
    
    @Query("""
        SELECT htgm FROM HolidayTargetGroupMap htgm 
        JOIN HolidayDatesDescription hdd ON htgm.dateDescriptionId = hdd.id
        JOIN HolidayDate hd ON hdd.dateId = hd.id
        JOIN HolidayCountry hc ON hdd.holidayId = hc.holidayId
        WHERE htgm.targetGroupId = :targetGroupId 
        AND hc.countryId = :countryId 
        AND hd.holidayDate BETWEEN :startDate AND :endDate
        """)
    List<HolidayTargetGroupMap> findHolidaysForTargetGroupAndCountryInDateRange(
        @Param("targetGroupId") Long targetGroupId,
        @Param("countryId") Long countryId,
        @Param("startDate") LocalDate startDate,
        @Param("endDate") LocalDate endDate
    );
}