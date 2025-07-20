package com.example.holiday.repository;

import com.example.holiday.entity.HolidayTargetGroupTranslation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface HolidayTargetGroupTranslationRepository extends JpaRepository<HolidayTargetGroupTranslation, Long> {
    
    @Query("SELECT htgt FROM HolidayTargetGroupTranslation htgt WHERE htgt.languageId = :languageId")
    List<HolidayTargetGroupTranslation> findByLanguageId(@Param("languageId") Long languageId);
    
    @Query("SELECT htgt FROM HolidayTargetGroupTranslation htgt WHERE htgt.targetGroupId = :targetGroupId AND htgt.languageId = :languageId")
    HolidayTargetGroupTranslation findByTargetGroupIdAndLanguageId(@Param("targetGroupId") Long targetGroupId, @Param("languageId") Long languageId);
}
