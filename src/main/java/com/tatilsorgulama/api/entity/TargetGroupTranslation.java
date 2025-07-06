package com.tatilsorgulama.api.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "TARGET_GROUP_TRANSLATIONS", uniqueConstraints = {
        @UniqueConstraint(columnNames = {"TARGET_GROUP_ID", "LANGUAGE_ID"})
})
@Getter
@Setter
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class TargetGroupTranslation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "TARGET_GROUP_ID")
    @JsonIgnore
    private TargetGroup targetGroup;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "LANGUAGE_ID")
    private Language language;

    @Column(name = "NAME", nullable = false, length = 100)
    private String name;
}
