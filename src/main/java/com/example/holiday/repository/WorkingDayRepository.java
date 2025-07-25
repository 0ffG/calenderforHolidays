package com.example.holiday.repository;

import com.example.holiday.entity.HolidayTargetGroupMap;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface WorkingDayRepository extends JpaRepository<HolidayTargetGroupMap, Long> {
    
    @Query(value = """
        SELECT 
            hd.holiday_date,
            DBMS_LOB.SUBSTR(hddt.description, 4000, 1) as holiday_name,
            htgm.is_half_day
        FROM Holiday_Target_Group_Map htgm
        JOIN Holiday_Dates_Description hdd ON htgm.date_description_id = hdd.id
        JOIN Holiday_Dates hd ON hdd.date_id = hd.id
        JOIN Holiday_Countries hc ON hdd.holiday_id = hc.holiday_id
        JOIN Holiday_Dates_Description_Translations hddt ON hdd.id = hddt.description_id
        WHERE htgm.target_group_id = :targetGroupId 
        AND hc.country_id = :countryId 
        AND hddt.language_id = :languageId
        AND hd.holiday_date BETWEEN :startDate AND :endDate
        ORDER BY hd.holiday_date
        """, nativeQuery = true)
    List<Object[]> findHolidaysForCalculation(
        @Param("targetGroupId") Long targetGroupId,
        @Param("countryId") Long countryId,
        @Param("languageId") Long languageId,
        @Param("startDate") LocalDate startDate,
        @Param("endDate") LocalDate endDate
    );
    
    @Query(value = """
        SELECT DISTINCT
            hd.holiday_date,
            DBMS_LOB.SUBSTR(hddt.description, 4000, 1) as holiday_name,
            COALESCE(MIN(htgm.is_half_day), 0) as is_half_day
        FROM Holiday_Dates hd
        JOIN Holiday_Dates_Description hdd ON hd.id = hdd.date_id
        JOIN Holiday_Countries hc ON hdd.holiday_id = hc.holiday_id
        JOIN Holiday_Dates_Description_Translations hddt ON hdd.id = hddt.description_id
        LEFT JOIN Holiday_Target_Group_Map htgm ON hdd.id = htgm.date_description_id
        WHERE hc.country_id = :countryId 
        AND hddt.language_id = :languageId
        GROUP BY hd.holiday_date, DBMS_LOB.SUBSTR(hddt.description, 4000, 1)
        ORDER BY hd.holiday_date
        """, nativeQuery = true)
    List<Object[]> findAllHolidaysByCountry(
        @Param("countryId") Long countryId,
        @Param("languageId") Long languageId
    );
}
