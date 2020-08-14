CREATE TABLE Publishers(
id VARCHAR(36) PRIMARY KEY,
name TEXT,
Address TEXT
);

CREATE TABLE Books(
ISBN VARCHAR(15) PRIMARY KEY,
Title TEXT,
Author TEXT,
Publisher_id VARCHAR(36) REFERENCES Publishers(id)
);

CREATE TABLE Branch(
Branch_id VARCHAR(36) PRIMARY KEY,
Branch_addr TEXT
);

CREATE TABLE branch_books(
Branch_id INT REFERENCES Branch(Branch_id),
ISBN VARCHAR(15) REFERENCES Book(ISBN),
Num_copies INT
);

