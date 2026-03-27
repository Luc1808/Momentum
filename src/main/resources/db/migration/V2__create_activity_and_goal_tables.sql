CREATE TABLE activity (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    achieved BOOLEAN NOT NULL,
    number_measure INTEGER,
    created_at TIMESTAMP NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE goal (
    id SERIAL PRIMARY KEY,
    activity_id INTEGER NOT NULL,
    achieved BOOLEAN NOT NULL,
    number_target INTEGER NOT NULL,
    deadline TIMESTAMP NOT NULL,
    FOREIGN KEY (activity_id) REFERENCES activity(id)
);

