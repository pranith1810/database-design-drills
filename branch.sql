CREATE TABLE Book(
ISBN VARCHAR(15) PRIMARY KEY,
Title TEXT,
Author TEXT,
Publisher TEXT
);

CREATE TABLE Branch(
Branch_id INT PRIMARY KEY,
Branch_addr TEXT
);

CREATE TABLE branch_books(
Branch_id INT REFERENCES Branch(Branch_id),
ISBN VARCHAR(15) REFERENCES Book(ISBN),
Num_copies INT
);

