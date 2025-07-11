package com.tatilsorgulama.api.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Entity
@Table(name = "TARGET_GROUPS")
@Getter
@Setter
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class TargetGroup {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;

    @Column(name = "CODE", unique = true, nullable = false, length = 50)
    private String code;

    @OneToMany(mappedBy = "targetGroup")
    private List<TargetGroupTranslation> translations;
}
