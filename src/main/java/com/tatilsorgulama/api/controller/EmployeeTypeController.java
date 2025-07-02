package com.tatilsorgulama.api.controller;

import com.tatilsorgulama.api.entity.EmployeeType;
import com.tatilsorgulama.api.repository.EmployeeTypeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/employee-types")
@RequiredArgsConstructor
public class EmployeeTypeController {

    private final EmployeeTypeRepository employeeTypeRepository;

    @GetMapping
    public List<EmployeeType> getAllEmployeeTypes() {
        return employeeTypeRepository.findAll();
    }
}
