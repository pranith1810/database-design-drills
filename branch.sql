CREATE TABLE Book(
ISBN VARCHAR(20) PRIMARY KEY,
Title VARCHAR(20),
Author VARCHAR(20),
Publisher VARCHAR(20)
);

CREATE TABLE Branch(
Branch_id INT PRIMARY KEY,
Branch_addr VARCHAR(20)
);

CREATE TABLE branch_books(
Branch_id INT REFERENCES Branch(Branch_id),
ISBN VARCHAR(15) REFERENCES Book(ISBN),
Num_copies INT
);

