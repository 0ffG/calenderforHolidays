package com.tatilsorgulama.api.repository;

import com.tatilsorgulama.api.entity.Holiday;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.time.LocalDate;
import java.util.List;

@Repository
public interface HolidayRepository extends JpaRepository<Holiday, Integer> {

    // ... diğer metotlarınız ...
    List<Holiday> findByCountry_CountryIdAndHolidayDate(Integer countryId, LocalDate date);
    List<Holiday> findByCountry_CountryId(Integer countryId);

    /**
     * Finds holidays for employees matching sector and employee type in a given country.
     */
    @Query(
            "select distinct h from Holiday h " +
                    "join h.country c " +
                    "join Employee e on e.country = c " +
                    "where c.countryId = :countryId " +
                    "and e.sectorType = :sectorType " +
                    "and e.employeeType.employeeTypeId = :employeeTypeId")
    List<Holiday> findByCountryAndSectorAndEmployeeType(Integer countryId,
                                                        String sectorType,
                                                        Integer employeeTypeId);

    // YENİ METOT: Sadece ülke ve sektöre göre arama yapar
    /**
     * Finds holidays for employees matching sector in a given country.
     */
    @Query(
            "select distinct h from Holiday h " +
            "join h.country c " +
            "join Employee e on e.country = c " +
            "where c.countryId = :countryId " +
            "and e.sectorType = :sectorType")
    List<Holiday> findByCountryAndSector(Integer countryId, String sectorType);

    /**
     * Lists holidays in a given country and sector between two dates.
     */
    @Query(
            "select distinct h from Holiday h " +
            "join h.country c " +
            "join Employee e on e.country = c " +
            "where c.countryId = :countryId " +
            "and e.sectorType = :sectorType " +
            "and h.holidayDate between :startDate and :endDate")
    List<Holiday> findByCountrySectorAndDateBetween(Integer countryId,
                                                   String sectorType,
                                                   LocalDate startDate,
                                                   LocalDate endDate);
}