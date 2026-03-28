CREATE EXTENSION IF NOT EXISTS "pgcrypto";

CREATE TABLE users (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    name VARCHAR(45) NOT NULL,
    surname VARCHAR(45) NOT NULL,
    password TEXT NOT NULL,
    birthdate TIMESTAMP,
    email varchar(45) NOT NULL
);

CREATE TABLE activity (
      id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
      title VARCHAR(45),
      user_id UUID NOT NULL,
      achieved BOOLEAN NOT NULL,
      number_measure INTEGER,
      created_at TIMESTAMP NOT NULL,
      FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE goal (
      id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
      activity_id UUID NOT NULL,
      achieved BOOLEAN NOT NULL,
      number_target INTEGER NOT NULL,
      deadline TIMESTAMP NOT NULL,
      FOREIGN KEY (activity_id) REFERENCES activity(id)
);
