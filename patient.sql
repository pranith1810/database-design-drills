CREATE TABLE Doctor(
Doctor_id INT PRIMARY KEY,
Doctor_name VARCHAR(20),
Secretary VARCHAR(20)
);

CREATE TABLE Prescription(
Prescription_id INT PRIMARY KEY,
Drug VARCHAR(20),
Date DATE,
Dosage INT
);

CREATE TABLE Patient(
Patient_id INT PRIMARY KEY,
Name VARCHAR(20),
DOB DATE,
Address VARCHAR(20),
Prescription_id INT REFERENCES Prescription(Prescription_id),
Doctor_id INT REFERENCES Doctor(Doctor_id)
);
