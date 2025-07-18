package com.example.holiday.dto;

public class WorkingDaysResultDto {
    private long holidayDays;
    private long workingDays;

    public WorkingDaysResultDto() {}

    public WorkingDaysResultDto(long holidayDays, long workingDays) {
        this.holidayDays = holidayDays;
        this.workingDays = workingDays;
    }

    public long getHolidayDays() {
        return holidayDays;
    }

    public void setHolidayDays(long holidayDays) {
        this.holidayDays = holidayDays;
    }

    public long getWorkingDays() {
        return workingDays;
    }

    public void setWorkingDays(long workingDays) {
        this.workingDays = workingDays;
    }
}
