package com.tatilsorgulama.api.controller;

import com.tatilsorgulama.api.repository.EmployeeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/sector-types")
@RequiredArgsConstructor
public class SectorTypeController {

    private final EmployeeRepository employeeRepository;

    @GetMapping
    public List<String> getSectorTypes() {
        return employeeRepository.findDistinctSectorTypes();
    }
}
