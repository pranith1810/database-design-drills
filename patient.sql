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
Date_given DATE
);

CREATE TABLE Prescription_drugs(
Prescription_id VARCHAR(36) REFERENCES Prescription(Prescription_id),
Drug_id VARCHAR(36) REFERENCES Drug(Drug_id),
Dosage TEXT
);

CREATE TABLE Patient(
Patient_id VARCHAR(36) PRIMARY KEY,
Name TEXT,
DOB DATE,
Address TEXT
);

CREATE TABLE Patient_doctor(
Patient_id VARCHAR(36) PRIMARY KEY,
Prescription_id VARCHAR(36) REFERENCES Prescription(Prescription_id),
Doctor_id VARCHAR(36) REFERENCES Doctor(Doctor_id)
);
