package com.example.holiday.controller;

import com.example.holiday.dto.LanguageDto;
import com.example.holiday.service.LanguageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*")
public class LanguageController {
    
    @Autowired
    private LanguageService languageService;
    
    @GetMapping("/language")
    public ResponseEntity<List<LanguageDto>> getAllLanguages() {
        List<LanguageDto> languages = languageService.getAllLanguages();
        return ResponseEntity.ok(languages);
    }
}