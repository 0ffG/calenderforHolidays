package com.tatilsorgulama.api.controller;

import com.tatilsorgulama.api.entity.Country;
import com.tatilsorgulama.api.repository.CountryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/countries") // Bu controller'daki tüm URL'ler /api/countries ile başlayacak
@RequiredArgsConstructor // Lombok: final alanlar için otomatik olarak constructor oluşturur (Dependency Injection)
public class CountryController {

    private final CountryRepository countryRepository;

    @GetMapping
    public List<Country> getAllCountries() {
        return countryRepository.findAll();
    }
}
