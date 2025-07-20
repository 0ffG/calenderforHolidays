package com.example.holiday.controller;

import com.example.holiday.dto.HolidayTargetGroupDto;
import com.example.holiday.service.HolidayTargetGroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*")
public class HolidayTargetGroupController {
    
    @Autowired
    private HolidayTargetGroupService holidayTargetGroupService;
    
    @GetMapping("/targetgroup")
    public ResponseEntity<List<HolidayTargetGroupDto>> getAllTargetGroups(@RequestParam(defaultValue = "tr") String lang) {
        List<HolidayTargetGroupDto> targetGroups = holidayTargetGroupService.getAllTargetGroups(lang);
        return ResponseEntity.ok(targetGroups);
    }
}