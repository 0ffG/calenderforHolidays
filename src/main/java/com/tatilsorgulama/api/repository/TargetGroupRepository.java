package com.tatilsorgulama.api.repository;

import com.tatilsorgulama.api.entity.TargetGroup;
import com.tatilsorgulama.api.dto.TargetGroupDto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TargetGroupRepository extends JpaRepository<TargetGroup, Integer> {
    
    @Query("select new com.tatilsorgulama.api.dto.TargetGroupDto(tg.id, tg.code, tgt.name) " +
           "from TargetGroup tg " +
           "join tg.translations tgt " +
           "join tgt.language l " +
           "where l.code = :languageCode " +
           "order by tg.id")
    List<TargetGroupDto> findByLanguage(@Param("languageCode") String languageCode);
}
