package io.github.Luc1808.momentum.domain.user;

import java.util.Date;

public record UserRequestDTO(String name, String surname, String password, Date birthdate, String email) {
}
