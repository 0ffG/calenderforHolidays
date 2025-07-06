package com.tatilsorgulama.api.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name = "HOLIDAYS")
@Getter
@Setter
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Holiday {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;

    @Column(name = "CODE", unique = true, nullable = false, length = 100)
    private String code;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "COUNTRY_ID")
    private Country country;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "HOLIDAY_TYPE_ID")
    private HolidayType holidayType;

    @Column(name = "START_DATE")
    private LocalDate startDate;

    @Column(name = "END_DATE")
    private LocalDate endDate;

    @Column(name = "IS_NATIONAL")
    private Boolean isNational;

    @Column(name = "IS_VARIABLE")
    private Boolean isVariable;

    @ManyToMany
    @JoinTable(name = "HOLIDAY_TARGET_GROUPS",
            joinColumns = @JoinColumn(name = "HOLIDAY_ID"),
            inverseJoinColumns = @JoinColumn(name = "TARGET_GROUP_ID"))
    private List<TargetGroup> targetGroups;

    @OneToMany(mappedBy = "holiday")
    @JsonManagedReference
    private List<HolidayDescription> descriptions;
}
