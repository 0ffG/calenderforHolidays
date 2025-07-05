package com.tatilsorgulama.api.controller;

import com.tatilsorgulama.api.entity.TargetGroup;
import com.tatilsorgulama.api.repository.TargetGroupRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/target-groups")
@RequiredArgsConstructor
public class TargetGroupController {

    private final TargetGroupRepository repository;

    @GetMapping
    public List<TargetGroup> getAll() {
        return repository.findAll();
    }
}
