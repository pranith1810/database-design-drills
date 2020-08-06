CREATE TABLE Location(
Location_id INT PRIMARY KEY,
Location_name VARCHAR(20)
);

CREATE TABLE Manager(
Manager_id INT PRIMARY KEY,
Manager_name VARCHAR(20), 
Mnager_location_id INT REFERENCES Location(Location_id)
);

CREATE TABLE Contract(
Contract_id INT PRIMARY KEY,
Estimated_cost INT,
Completion_date DATE 
);

CREATE TABLE Staff(
Staff_id INT PRIMARY KEY,
Staff_name VARCHAR(20),
Staff_location_id INT REFERENCES Location(Location_id)
);

CREATE TABLE Client(
Client_id INT PRIMARY KEY,
Name VARCHAR(20),
Location_id INT REFERENCES Location(Location_id),
Manager_id  INT REFERENCES Manager(Manager_id),
Contract_id INT REFERENCES Contract(Contract_id),
Staff_id INT REFERENCES Staff(Staff_id)
);
