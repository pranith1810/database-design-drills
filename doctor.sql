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
Drug1 VARCHAR(36) REFERENCES Drug_id,
Dosage_drug1 TEXT,
Drug2 VARCHAR(36) REFERENCES Drug_id,
Dosage_drug2 TEXT,
Drug3 VARCHAR(36) REFERENCES Drug_id,
Dosage_drug3 TEXT,
Drug4 VARCHAR(36) REFERENCES Drug_id,
Dosage_drug4 TEXT,
Drug5 VARCHAR(36) REFERENCES Drug_id,
Dosage_drug5 TEXT,
Date_given DATE
);

CREATE TABLE Patient(
Patient_id VARCHAR(36) PRIMARY KEY,
Name TEXT,
DOB DATE,
Address TEXT
);

CREATE TABLE Doctor_patient(
Doctor_id VARCHAR(36) REFERENCES Doctor(Doctor_id),
Patient_id VARCHAR(36) REFERENCES Patient(Patient_id),
Prescription_id VARCHAR(36) REFERENCES Prescription(Prescription_id)
);