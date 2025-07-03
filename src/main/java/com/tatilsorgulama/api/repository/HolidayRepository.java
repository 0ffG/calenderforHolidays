package com.tatilsorgulama.api.repository;

import com.tatilsorgulama.api.entity.Holiday;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.time.LocalDate;
import java.util.List;

@Repository
public interface HolidayRepository extends JpaRepository<Holiday, Integer> {

    /**
     * Belirli bir ülkedeki ve belirli bir tarihteki tatilleri bulan metot.
     * Spring Data JPA, metodun isminden yola çıkarak SQL sorgusunu otomatik oluşturur.
     * "FindBy" -> Sorgu başlangıcı
     * "Country_CountryId" -> Holiday entity'si içindeki 'country' alanının 'countryId'sine göre filtrele
     * "And" -> İkinci bir koşul ekle
     * "HolidayDate" -> 'holidayDate' alanına göre filtrele
     */
    List<Holiday> findByCountry_CountryIdAndHolidayDate(Integer countryId, LocalDate date);

    /**
     * Sadece ülkeye göre arama yapmak için bir başka örnek metot.
     */
    List<Holiday> findByCountry_CountryId(Integer countryId);

    /**
     * Finds holidays for employees matching sector and employee type in a given country.
     * Uses Employee entity to filter relevant holidays by country, sector and employee type.
     */
    @org.springframework.data.jpa.repository.Query(
            "select distinct h from Holiday h " +
                    "join h.country c " +
                    "join Employee e on e.country = c " +
                    "where c.countryId = :countryId " +
                    "and e.sectorType = :sectorType " +
                    "and e.employeeType.employeeTypeId = :employeeTypeId")
    java.util.List<Holiday> findByCountryAndSectorAndEmployeeType(Integer countryId,
                                                                  String sectorType,
                                                                  Integer employeeTypeId);
}
