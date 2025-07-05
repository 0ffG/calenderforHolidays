package com.tatilsorgulama.api.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "TARGET_GROUP_TRANSLATIONS", uniqueConstraints = {
        @UniqueConstraint(columnNames = {"TARGET_GROUP_ID", "LANGUAGE_CODE"})
})
@Getter
@Setter
public class TargetGroupTranslation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "TARGET_GROUP_ID")
    private TargetGroup targetGroup;

    @Column(name = "LANGUAGE_CODE", nullable = false, length = 5)
    private String languageCode;

    @Column(name = "NAME", nullable = false, length = 100)
    private String name;
}
