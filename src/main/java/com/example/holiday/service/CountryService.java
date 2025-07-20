package com.example.holiday.service;

import com.example.holiday.dto.CountryDto;
import com.example.holiday.entity.CountryTranslation;
import com.example.holiday.repository.CountryTranslationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class CountryService {
    
    @Autowired
    private CountryTranslationRepository countryTranslationRepository;
    
    public List<CountryDto> getAllCountries(String languageCode) {
        Long languageId = getLanguageId(languageCode);
        List<CountryTranslation> translations = countryTranslationRepository.findByLanguageId(languageId);
        
        return translations.stream()
                .map(translation -> new CountryDto(translation.getCountryId(), translation.getName()))
                .collect(Collectors.toList());
    }
    
    private Long getLanguageId(String languageCode) {
        // 'tr' -> 1, 'en' -> 2 based on data.sql
        return "tr".equals(languageCode) ? 1L : 2L;
    }
}