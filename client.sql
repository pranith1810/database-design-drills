CREATE TABLE Location(
Location_id VARCHAR(36) PRIMARY KEY,
Location_name TEXT
);

CREATE TABLE Manager(
Manager_id VARCHAR(36) PRIMARY KEY,
Manager_name TEXT, 
Manager_location_id VARCHAR(36) REFERENCES Location(Location_id)
);

CREATE TABLE Staff(
Staff_id VARCHAR(36) PRIMARY KEY,
Staff_name TEXT,
Staff_location_id VARCHAR(36) REFERENCES Location(Location_id),
Manager_id VARCHAR(36) REFERENCES Manager(Manager_id)
);

CREATE TABLE Contract(
Contract_id VARCHAR(36) PRIMARY KEY,
Estimated_cost INT,
Completion_date DATE 
);

CREATE TABLE Client(
Client_id VARCHAR(36) PRIMARY KEY,
Client_name TEXT,
Client_location_id VARCHAR(36) REFERENCES Location(Location_id)
);

CREATE TABLE clients_contracts(
client_id VARCHAR(36) REFERENCES Client(Client_id),
contract_id VARCHAR(36) REFERENCES Contract(Contract_id),
manager_id VARCHAR(36) REFERENCES Manager(Manager_id)
);
