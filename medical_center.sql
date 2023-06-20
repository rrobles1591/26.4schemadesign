-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center

CREATE TABLE doctors
(
  id SERIAL PRIMARY KEY,
--   patient_id INTEGER REFERENCES patients(id),
  full_name TEXT NOT NULL
);

CREATE TABLE diseases
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT
);

CREATE TABLE patients
(
  id SERIAL PRIMARY KEY,
  full_name TEXT NOT NULL
);

CREATE TABLE visit
(
id SERIAL PRIMARY KEY,
doctor_id INTEGER REFERENCES doctors(id),
patient_id INTEGER REFERENCES patients(id),
disease INTEGER REFERENCES diseases(id)
);

INSERT INTO doctors
  (full_name)
VALUES
  ('DrStephen'),
  ('DrGarrison');


INSERT INTO patients
  (full_name)
VALUES
  ('LoriSmith'),
  ('BobGrant');

INSERT INTO diseases
  (name, description)
VALUES
  ('Flu','Patient arrived sneezing')

INSERT INTO visit 
(doctor_id, patient_id, disease)
VALUES
(1,1,1)



-- HAD A PROBLEM WITH INSERT INTO VISIT
