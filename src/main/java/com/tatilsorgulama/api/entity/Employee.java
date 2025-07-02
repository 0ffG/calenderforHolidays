package com.tatilsorgulama.api.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "EMPLOYEES")
@Data
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "EMPLOYEE_ID")
    private Integer employeeId;

    @Column(name = "SECTOR_TYPE")
    private String sectorType;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "COUNTRY_ID")
    private Country country;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "EMPLOYEE_TYPE_ID")
    private EmployeeType employeeType;
}
