package com.example.holiday.repository;

import com.example.holiday.entity.HolidayDatesDescription;
import com.example.holiday.dto.HolidayDto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.time.LocalDate;
import java.util.List;

public interface HolidayDatesDescriptionRepository extends JpaRepository<HolidayDatesDescription, Long> {
    @Query("SELECT new com.example.holiday.dto.HolidayDto(hdd.date.date, ht.name, ht.type) " +
            "FROM HolidayDatesDescription hdd " +
            "JOIN hdd.holiday h " +
            "JOIN h.holidayTranslations ht " +
            "JOIN h.holidayCountries hc " +
            "WHERE hc.country.id = :countryId AND ht.language.code = :lang")
    List<HolidayDto> findHolidays(@Param("countryId") Long countryId, @Param("lang") String lang);

    @Query("SELECT hdd.date.date FROM HolidayDatesDescription hdd JOIN hdd.holiday h JOIN h.holidayCountries hc " +
            "WHERE hc.country.id = :countryId AND hdd.date.date BETWEEN :start AND :end")
    List<LocalDate> findHolidayDatesInRange(@Param("countryId") Long countryId,
                                            @Param("start") LocalDate start,
                                            @Param("end") LocalDate end);
}
