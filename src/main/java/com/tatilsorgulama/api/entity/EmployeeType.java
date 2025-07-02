package com.tatilsorgulama.api.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "EMPLOYEETYPES")
@Data
public class EmployeeType {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "EMPLOYEE_TYPE_ID")
    private Integer employeeTypeId;

    @Column(name = "TYPE_NAME")
    private String typeName;
}
