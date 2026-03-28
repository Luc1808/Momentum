package io.github.Luc1808.momentum.domain.activity;

import io.github.Luc1808.momentum.domain.goal.Goal;
import jakarta.persistence.*;

import java.util.Date;
import java.util.UUID;

@Table(name = "activity")
@Entity
public class Activity {
    @Id
    @GeneratedValue
    private UUID id;
    private Integer userId;
    private Boolean achieved;
    private Integer numberMeasure;
    private Date createdAt;

    @OneToOne
    @JoinColumn(name = "goal")
    private Goal goal;
}
