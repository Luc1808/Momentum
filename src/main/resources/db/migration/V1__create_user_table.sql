CREATE EXTENSION IF NOT EXISTS "pgcrypto";

CREATE TABLE users (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    name VARCHAR(45) NOT NULL,
    surname VARCHAR(45) NOT NULL,
    password TEXT NOT NULL,
    birthdate TIMESTAMP,
    email varchar(45) NOT NULL
);

CREATE TABLE goal (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    user_id UUID NOT NULL,
    title TEXT NOT NULL,
    session_per_week INTEGER NOT NULL,
    deadline_type VARCHAR(10) NOT NULL CHECK ( deadline_type IN ('week', 'month', '3months') ),
    start_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    created_at TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE activity (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    goal_id UUID NOT NULL,
    user_id UUID NOT NULL,
    act_date TIMESTAMP,
    did_it BOOLEAN NOT NULL,
    dur_min INTEGER,
    notes VARCHAR(200),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (goal_id) REFERENCES goal(id)
);