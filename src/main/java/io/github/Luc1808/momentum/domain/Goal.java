package io.github.Luc1808.momentum.domain;

import jakarta.persistence.*;

import java.util.Date;
import java.util.UUID;

@Table(name = "goal")
@Entity
public class Goal {
    @Id
    @GeneratedValue
    private UUID id;
    private Long activityId;
    private Boolean achieved;
    private Integer numberTarget;
    private Date deadline;

    @ManyToOne
    @JoinColumn(name = "activity")
    private Activity activity;
}
