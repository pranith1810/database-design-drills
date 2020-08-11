CREATE TABLE Doctor(
Doctor_id INT PRIMARY KEY,
Doctor_name TEXT,
Secretary TEXT
);

CREATE TABLE Prescription(
Prescription_id INT PRIMARY KEY,
Drug TEXT,
Date_given DATE,
Dosage INT
);

CREATE TABLE Patient(
Patient_id INT PRIMARY KEY,
Name TEXT,
DOB DATE,
Address TEXT
);

CREATE TABLE Doctor_patient(
Doctor_id INT REFERENCES Doctor(Doctor_id),
Patient_id INT REFERENCES Patient(Patient_id),
Prescription_id INT REFERENCES Prescription(Prescription_id)
);