package com.tatilsorgulama.api.controller;

import com.tatilsorgulama.api.entity.HolidayType;
import com.tatilsorgulama.api.repository.HolidayTypeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/holiday-types")
@RequiredArgsConstructor
public class HolidayTypeController {

    private final HolidayTypeRepository repository;

    @GetMapping
    public List<HolidayType> getAll() {
        return repository.findAll();
    }
}
