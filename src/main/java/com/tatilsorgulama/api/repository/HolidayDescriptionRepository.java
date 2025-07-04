package com.tatilsorgulama.api.repository;

import com.tatilsorgulama.api.entity.HolidayDescription;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.tatilsorgulama.api.dto.HolidayDescDto;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import java.util.List;

@Repository
public interface HolidayDescriptionRepository extends JpaRepository<HolidayDescription, Integer> {

    @Query("select new com.tatilsorgulama.api.dto.HolidayDescDto(h.startDate, h.endDate, hd.name, hd.description) " +
           "from HolidayDescription hd join hd.holiday h join hd.language l " +
           "where h.country.id = :countryId and l.code = :lang " +
           "order by h.startDate")
    List<HolidayDescDto> findByCountryAndLanguage(@Param("countryId") Integer countryId,
                                                  @Param("lang") String languageCode);
}
