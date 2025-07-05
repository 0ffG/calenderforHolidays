package com.tatilsorgulama.api.repository;

import com.tatilsorgulama.api.entity.Holiday;
import com.tatilsorgulama.api.dto.HolidayEventDto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface HolidayRepository extends JpaRepository<Holiday, Integer> {

    List<Holiday> findByCountry_Id(Integer countryId);

    List<Holiday> findByCountry_IdAndStartDate(Integer countryId, LocalDate startDate);

    @Query("select distinct h from Holiday h join h.targetGroups tg where h.country.id = :countryId and tg.code = :groupCode")
    List<Holiday> findByCountryAndTargetGroup(Integer countryId, String groupCode);

    @Query("select new com.tatilsorgulama.api.dto.HolidayEventDto(" +
            "hd.name, ht.code, h.startDate, h.endDate, tg.code) " +
            "from Holiday h " +
            "join h.targetGroups tg " +
            "join h.holidayType ht " +
            "join h.descriptions hd " +
            "where h.country.id = :countryId " +
            "and tg.code = :groupCode " +
            "and hd.languageCode = :lang " +
            "order by h.startDate")
    List<HolidayEventDto> findEvents(Integer countryId, String groupCode, String lang);

    @Query("select distinct h from Holiday h join h.targetGroups tg where h.country.id = :countryId and tg.code = :groupCode and h.startDate between :startDate and :endDate")
    List<Holiday> findByCountryTargetGroupAndDateBetween(Integer countryId,
                                                         String groupCode,
                                                         LocalDate startDate,
                                                         LocalDate endDate);

    @Query("select distinct h from Holiday h join h.targetGroups tg " +
            "where h.country.id = :countryId " +
            "and tg.code = :groupCode " +
            "and h.holidayType.code = :typeCode " +
            "and h.startDate between :startDate and :endDate")
    List<Holiday> findByCountryTypeGroupAndDateBetween(Integer countryId,
                                                       String typeCode,
                                                       String groupCode,
                                                       LocalDate startDate,
                                                       LocalDate endDate);
}
