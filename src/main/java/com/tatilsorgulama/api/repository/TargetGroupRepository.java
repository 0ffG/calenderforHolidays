package com.tatilsorgulama.api.repository;

import com.tatilsorgulama.api.entity.TargetGroup;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TargetGroupRepository extends JpaRepository<TargetGroup, Integer> {
}
