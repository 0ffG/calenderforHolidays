package com.example.holiday.controller;

import com.example.holiday.dto.*;
import com.example.holiday.entity.CountryTranslation;
import com.example.holiday.entity.HolidayTargetGroupTranslation;
import com.example.holiday.repository.*;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.*;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.*;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api")
public class HolidayController {

    private final LanguageRepository languageRepository;
    private final CountryTranslationRepository countryTranslationRepository;
    private final HolidayDatesDescriptionRepository holidayDatesDescriptionRepository;
    private final HolidayTargetGroupTranslationRepository targetGroupTranslationRepository;

    private static final Map<String, String> LANGUAGE_NAMES = Map.of(
            "en", "English",
            "tr", "Türkçe",
            "fr", "Français"
    );

    public HolidayController(LanguageRepository languageRepository,
                              CountryTranslationRepository countryTranslationRepository,
                              HolidayDatesDescriptionRepository holidayDatesDescriptionRepository,
                              HolidayTargetGroupTranslationRepository targetGroupTranslationRepository) {
        this.languageRepository = languageRepository;
        this.countryTranslationRepository = countryTranslationRepository;
        this.holidayDatesDescriptionRepository = holidayDatesDescriptionRepository;
        this.targetGroupTranslationRepository = targetGroupTranslationRepository;
    }

    @GetMapping("/languages")
    public List<LanguageDto> getLanguages() {
        return languageRepository.findAll().stream()
                .map(l -> new LanguageDto(l.getCode(), LANGUAGE_NAMES.getOrDefault(l.getCode(), l.getCode())))
                .collect(Collectors.toList());
    }

    @GetMapping("/countries")
    public List<IdNameDto> getCountries(@RequestParam String lang) {
        return countryTranslationRepository.findByLanguage_Code(lang).stream()
                .map(ct -> new IdNameDto(ct.getCountry().getId(), ct.getName()))
                .collect(Collectors.toList());
    }

    @GetMapping("/workplace-types")
    public List<IdNameDto> getWorkplaceTypes(@RequestParam String lang) {
        List<IdNameDto> list = new ArrayList<>();
        if ("tr".equals(lang)) {
            list.add(new IdNameDto(5L, "5 Gün"));
            list.add(new IdNameDto(6L, "6 Gün"));
        } else if ("fr".equals(lang)) {
            list.add(new IdNameDto(5L, "5 Jours"));
            list.add(new IdNameDto(6L, "6 Jours"));
        } else {
            list.add(new IdNameDto(5L, "5 Days"));
            list.add(new IdNameDto(6L, "6 Days"));
        }
        return list;
    }

    @GetMapping("/target-groups")
    public List<IdNameDto> getTargetGroups(@RequestParam String lang) {
        return targetGroupTranslationRepository.findByLanguage_Code(lang).stream()
                .map(t -> new IdNameDto(t.getTargetGroup().getId(), t.getName()))
                .collect(Collectors.toList());
    }

    @GetMapping("/holidays")
    public List<HolidayDto> getHolidays(@RequestParam Long countryId, @RequestParam String lang) {
        return holidayDatesDescriptionRepository.findHolidays(countryId, lang);
    }

    @PostMapping("/calculate-working-days")
    public WorkingDaysResultDto calculate(@RequestBody WorkingDaysRequestDto req) {
        LocalDate start = req.getStartDate();
        LocalDate end = req.getEndDate();
        if (start == null || end == null || start.isAfter(end)) {
            return new WorkingDaysResultDto(0, 0);
        }
        List<LocalDate> holidays = holidayDatesDescriptionRepository
                .findHolidayDatesInRange(req.getCountryId(), start, end);

        long totalDays = ChronoUnit.DAYS.between(start, end) + 1;
        int workDaysInWeek = "6".equals(req.getWorkplaceType()) ? 6 : 5;

        long weekendDays = 0;
        LocalDate d = start;
        while (!d.isAfter(end)) {
            DayOfWeek dow = d.getDayOfWeek();
            if (dow == DayOfWeek.SUNDAY || (workDaysInWeek == 5 && dow == DayOfWeek.SATURDAY)) {
                weekendDays++;
            }
            d = d.plusDays(1);
        }

        long holidayDays = holidays.size();
        long workingDays = totalDays - weekendDays - holidayDays;
        if (workingDays < 0) workingDays = 0;
        return new WorkingDaysResultDto(holidayDays, workingDays);
    }
}
