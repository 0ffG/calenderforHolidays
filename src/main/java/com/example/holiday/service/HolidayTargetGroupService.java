package com.example.holiday.service;

import com.example.holiday.dto.HolidayTargetGroupDto;
import com.example.holiday.entity.HolidayTargetGroupTranslation;
import com.example.holiday.repository.HolidayTargetGroupTranslationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class HolidayTargetGroupService {
    
    @Autowired
    private HolidayTargetGroupTranslationRepository holidayTargetGroupTranslationRepository;
    
    public List<HolidayTargetGroupDto> getAllTargetGroups(String languageCode) {
        Long languageId = getLanguageId(languageCode);
        List<HolidayTargetGroupTranslation> translations = holidayTargetGroupTranslationRepository.findByLanguageId(languageId);
        
        return translations.stream()
                .map(translation -> new HolidayTargetGroupDto(translation.getTargetGroupId(), translation.getName()))
                .collect(Collectors.toList());
    }
    
    private Long getLanguageId(String languageCode) {
        // 'tr' -> 1, 'en' -> 2 based on data.sql
        return "tr".equals(languageCode) ? 1L : 2L;
    }
}