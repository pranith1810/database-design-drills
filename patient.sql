CREATE TABLE Doctor(
Doctor_id VARCHAR(36) PRIMARY KEY,
Doctor_name TEXT,
Secretary_name TEXT
);

CREATE TABLE Drug(
Drug_id VARCHAR(36) PRIMARY KEY,
Drug_name TEXT,
Brand_name TEXT
);

CREATE TABLE Prescription(
Prescription_id VARCHAR(36) PRIMARY KEY,
Drug VARCHAR(36) REFERENCES Drug_id,
Date_given DATE,
Dosage TEXT
);

CREATE TABLE Patient(
Patient_id VARCHAR(36) PRIMARY KEY,
Name TEXT,
DOB DATE,
Address TEXT
);

CREATE TABLE Patient_doctor(
Patient_id INT PRIMARY KEY,
Prescription_id INT REFERENCES Prescription(Prescription_id),
Doctor_id INT REFERENCES Doctor(Doctor_id)
);
