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

    // Örnek: /api/holidays?countryId=1
    // Belirli bir ülkedeki tüm tatilleri listeler
    @GetMapping
    public ResponseEntity<List<Holiday>> getHolidaysByCountry(@RequestParam Integer countryId) {
        List<Holiday> holidays = holidayRepository.findByCountry_CountryId(countryId);
        return ResponseEntity.ok(holidays);
    }

    // Örnek: /api/holidays/query?countryId=1&date=2025-10-29
    // Belirli bir ülkedeki ve belirli bir tarihteki tatilleri sorgular
    @GetMapping("/query")
    public ResponseEntity<List<Holiday>> queryHolidays(
            @RequestParam Integer countryId,
            @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate date) {

        List<Holiday> holidays = holidayRepository.findByCountry_CountryIdAndHolidayDate(countryId, date);
        if (holidays.isEmpty()) {
            return ResponseEntity.noContent().build(); // Tatil bulunamadıysa 204 No Content döner
        }
        return ResponseEntity.ok(holidays);
    }

    // Yeni: /api/holidays/filter?countryId=1&sectorType=Public&employeeTypeId=2
    // Seçilen ülke, sektör ve çalışan tipine uygun tatilleri listeler
    @GetMapping("/filter")
    public ResponseEntity<List<Holiday>> filterHolidays(
            @RequestParam Integer countryId,
            @RequestParam String sectorType,
            @RequestParam Integer employeeTypeId) {
        List<Holiday> holidays = holidayRepository
                .findByCountryAndSectorAndEmployeeType(countryId, sectorType, employeeTypeId);
        return ResponseEntity.ok(holidays);
    }

    // Örnek: POST isteği ile /api/holidays adresine JSON formatında yeni tatil bilgisi göndermek
    @PostMapping
    public ResponseEntity<Holiday> createHoliday(@RequestBody Holiday newHoliday) {
        // Not: Gelen newHoliday nesnesinde country.countryId dolu olmalıdır.
        Holiday savedHoliday = holidayRepository.save(newHoliday);
        return ResponseEntity.ok(savedHoliday);
    }
}
