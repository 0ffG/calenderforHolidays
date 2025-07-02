package com.tatilsorgulama.api.repository;

import com.tatilsorgulama.api.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

    /**
     * Returns distinct sector types from employees.
     */
    @org.springframework.data.jpa.repository.Query("select distinct e.sectorType from Employee e")
    java.util.List<String> findDistinctSectorTypes();
}
