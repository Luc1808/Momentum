package io.github.Luc1808.momentum.repo;

import io.github.Luc1808.momentum.domain.activity.Activity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface ActivityRepository extends JpaRepository<Activity, UUID> {
}
