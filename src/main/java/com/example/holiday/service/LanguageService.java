package com.example.holiday.service;

import com.example.holiday.dto.LanguageDto;
import com.example.holiday.entity.Language;
import com.example.holiday.repository.LanguageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class LanguageService {
    
    @Autowired
    private LanguageRepository languageRepository;
    
    public List<LanguageDto> getAllLanguages() {
        List<Language> languages = languageRepository.findAll();
        return languages.stream()
                .map(this::convertToDto)
                .collect(Collectors.toList());
    }
    
    private LanguageDto convertToDto(Language language) {
        String displayName = getLanguageDisplayName(language.getCode());
        return new LanguageDto(language.getId(), language.getCode(), displayName);
    }
    
    private String getLanguageDisplayName(String code) {
        switch (code) {
            case "tr":
                return "Türkçe";
            case "en":
                return "English";
            default:
                return code;
        }
    }
}
