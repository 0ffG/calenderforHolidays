package com.tatilsorgulama.api.dto;

import java.time.LocalDate;

public record HolidayDescDto(LocalDate startDate, LocalDate endDate, String name, String description) {}
