package io.github.Luc1808.momentum.repo;

import io.github.Luc1808.momentum.domain.goal.Goal;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface GoalRepository extends JpaRepository<Goal, UUID> {
}
