package com.example.holiday.controller;

import com.example.holiday.dto.CountryDto;
import com.example.holiday.service.CountryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*")
public class CountryController {
    
    @Autowired
    private CountryService countryService;
    
    @GetMapping("/country")
    public ResponseEntity<List<CountryDto>> getAllCountries(@RequestParam(defaultValue = "tr") String lang) {
        List<CountryDto> countries = countryService.getAllCountries(lang);
        return ResponseEntity.ok(countries);
    }
}