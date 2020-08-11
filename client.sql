CREATE TABLE Location(
Location_id INT PRIMARY KEY,
Location_name TEXT
);

CREATE TABLE Manager(
Manager_id INT PRIMARY KEY,
Manager_name TEXT, 
Mnager_location_id INT REFERENCES Location(Location_id)
);

CREATE TABLE Contract(
Contract_id INT PRIMARY KEY,
Estimated_cost INT,
Completion_date DATE 
);

CREATE TABLE Staff(
Staff_id INT PRIMARY KEY,
Staff_name TEXT,
Staff_location_id INT REFERENCES Location(Location_id)
);

CREATE TABLE Client(
Client_id INT PRIMARY KEY,
Client_name TEXT,
Location_id INT REFERENCES Location(Location_id),
Manager_id  INT REFERENCES Manager(Manager_id),
Contract_id INT REFERENCES Contract(Contract_id),
Staff_id INT REFERENCES Staff(Staff_id)
);
