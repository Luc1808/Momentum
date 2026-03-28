package io.github.Luc1808.momentum.domain;

import io.github.Luc1808.momentum.domain.activity.Activity;
import jakarta.persistence.*;

import java.util.Date;
import java.util.UUID;

@Table(name = "users")
@Entity
public class User {
    @Id
    @GeneratedValue
    private UUID id;
    private String name;
    private String surname;
    private String password;
    private Date birthdate;
    private String email;

    @ManyToOne
    @JoinColumn(name = "activity")
    private Activity activity;
}
