package com.example.holiday.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*")
public class HolidayInfoController {
    
    @GetMapping("/info")
    public ResponseEntity<Map<String, String>> getApiInfo() {
        Map<String, String> info = new HashMap<>();
        info.put("application", "Holiday Calendar API");
        info.put("version", "1.0");
        info.put("description", "API for managing holidays and calculating working days");
        
        return ResponseEntity.ok(info);
    }
}