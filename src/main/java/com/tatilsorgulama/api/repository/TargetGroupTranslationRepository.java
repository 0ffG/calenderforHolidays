package com.tatilsorgulama.api.repository;

import com.tatilsorgulama.api.entity.TargetGroupTranslation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TargetGroupTranslationRepository extends JpaRepository<TargetGroupTranslation, Integer> {
}
