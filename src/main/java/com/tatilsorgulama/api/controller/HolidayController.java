package com.tatilsorgulama.api.controller;

import com.tatilsorgulama.api.entity.Holiday;
import com.tatilsorgulama.api.repository.HolidayRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

@RestController
@RequestMapping("/api/holidays")
@RequiredArgsConstructor
public class HolidayController {

    private final HolidayRepository holidayRepository;

    // Lists all holidays for a given country
    @GetMapping
    public ResponseEntity<List<Holiday>> getHolidaysByCountry(@RequestParam Integer countryId) {
        List<Holiday> holidays = holidayRepository.findByCountry_Id(countryId);
        return ResponseEntity.ok(holidays);
    }

    // Example: /api/holidays/query?countryId=1&date=2025-10-29
    // Queries holidays for a given country and date
    @GetMapping("/query")
    public ResponseEntity<List<Holiday>> queryHolidays(
            @RequestParam Integer countryId,
            @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate date) {

        List<Holiday> holidays = holidayRepository.findByCountry_IdAndStartDate(countryId, date);
        if (holidays.isEmpty()) {
            return ResponseEntity.noContent().build();
        }
        return ResponseEntity.ok(holidays);
    }

    // Filters holidays by country and target group code
    @GetMapping("/filter")
    public ResponseEntity<List<Holiday>> filterHolidays(
            @RequestParam Integer countryId,
            @RequestParam String targetGroup) {
        List<Holiday> holidays = holidayRepository
                .findByCountryAndTargetGroup(countryId, targetGroup);
        return ResponseEntity.ok(holidays);
    }
    
    // Lists holidays between two dates for a given country and target group

    @GetMapping("/range")
    public ResponseEntity<List<Holiday>> getHolidaysInRange(
            @RequestParam Integer countryId,
            @RequestParam String targetGroup,
            @RequestParam("start") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate startDate,
            @RequestParam("end") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate endDate) {

        List<Holiday> holidays = holidayRepository
                .findByCountryTargetGroupAndDateBetween(countryId, targetGroup, startDate, endDate);
        return ResponseEntity.ok(holidays);
    }

    // Örnek: POST isteği ile /api/holidays adresine JSON formatında yeni tatil bilgisi göndermek
    @PostMapping
    public ResponseEntity<Holiday> createHoliday(@RequestBody Holiday newHoliday) {
        Holiday savedHoliday = holidayRepository.save(newHoliday);
        return ResponseEntity.ok(savedHoliday);
    }
}