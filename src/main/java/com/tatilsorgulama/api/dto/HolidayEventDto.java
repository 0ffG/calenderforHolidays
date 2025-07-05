package com.tatilsorgulama.api.dto;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

public record HolidayEventDto(String holidayName,
                              String holidayType,
                              LocalDate holidayDate,
                              long durationDays,
                              String appliesToSector) {
    public HolidayEventDto(String holidayName,
                           String holidayType,
                           LocalDate startDate,
                           LocalDate endDate,
                           String appliesToSector) {
        this(holidayName,
             holidayType,
             startDate,
             ChronoUnit.DAYS.between(startDate, endDate) + 1,
             appliesToSector);
    }
}
