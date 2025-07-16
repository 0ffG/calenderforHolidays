package com.example.holiday.dto;

public class HolidayTargetGroupMapDto {
    private Long id;
    private Long dateDescriptionId;
    private Long targetGroupId;

    public HolidayTargetGroupMapDto() {
    }

    public HolidayTargetGroupMapDto(Long id, Long dateDescriptionId, Long targetGroupId) {
        this.id = id;
        this.dateDescriptionId = dateDescriptionId;
        this.targetGroupId = targetGroupId;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getDateDescriptionId() {
        return dateDescriptionId;
    }

    public void setDateDescriptionId(Long dateDescriptionId) {
        this.dateDescriptionId = dateDescriptionId;
    }

    public Long getTargetGroupId() {
        return targetGroupId;
    }

    public void setTargetGroupId(Long targetGroupId) {
        this.targetGroupId = targetGroupId;
    }
}
