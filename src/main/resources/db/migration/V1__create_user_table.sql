CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(45) NOT NULL,
    surname VARCHAR(45) NOT NULL,
    password TEXT NOT NULL,
    birthdate TIMESTAMP,
    email varchar(45) NOT NULL
);