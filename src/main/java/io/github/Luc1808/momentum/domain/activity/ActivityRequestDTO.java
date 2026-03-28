package io.github.Luc1808.momentum.domain.activity;

import java.util.Date;

public record ActivityRequestDTO(Boolean achieved, Integer numberMeasure, Date createdAt) {
}
