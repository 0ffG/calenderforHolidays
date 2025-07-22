package com.example.holiday.controller;

import com.example.holiday.dto.WorkingDayCalculationRequest;
import com.example.holiday.dto.WorkingDayCalculationResponse;
import com.example.holiday.service.WorkingDayCalculationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*")
public class WorkingDayCalculationController {
    
    @Autowired
    private WorkingDayCalculationService workingDayCalculationService;
    
    @PostMapping("/calculateWorkingDay")
    public ResponseEntity<?> calculateWorkingDays(
            @RequestBody WorkingDayCalculationRequest request,
            @RequestParam(defaultValue = "tr") String lang) {
        
        // Validate required fields
        if (request.getStartDate() == null || request.getEndDate() == null || 
            request.getCountryId() == null || request.getTargetGroupId() == null) {
            return ResponseEntity.badRequest()
                .body(java.util.Map.of(
                    "error", "Bad Request",
                    "message", "Required fields are missing: startDate, endDate, countryId, targetGroupId",
                    "status", 400
                ));
        }
        
        WorkingDayCalculationResponse response = workingDayCalculationService.calculateWorkingDays(request, lang);
        return ResponseEntity.ok(response);
    }
}