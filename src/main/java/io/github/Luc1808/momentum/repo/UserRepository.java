package io.github.Luc1808.momentum.repo;

import io.github.Luc1808.momentum.domain.user.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface UserRepository extends JpaRepository<User, UUID> {
}
