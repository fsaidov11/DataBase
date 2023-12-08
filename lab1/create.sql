-- Create City table
CREATE TABLE City (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Create Delegation table
CREATE TABLE Delegation (
    id INT PRIMARY KEY,
    delegation_leader VARCHAR(255) NOT NULL,
    emotional_status VARCHAR(255) NOT NULL,
    city_id INT,
    FOREIGN KEY (city_id) REFERENCES City(id)
);

-- Create Advisor table
CREATE TABLE Advisor (
    id INT PRIMARY KEY,
    delegation_id INT,
    advisor_name VARCHAR(255) NOT NULL,
    advisor_anxiety VARCHAR(255) NOT NULL,
    FOREIGN KEY (delegation_id) REFERENCES Delegation(id)
);

-- Create Meeting table
CREATE TABLE Meeting (
    id INT PRIMARY KEY,
    city_id INT,
    first_delegation_id INT,
    second_delegation_id INT,
    FOREIGN KEY (city_id) REFERENCES City(id),
    FOREIGN KEY (first_delegation_id) REFERENCES Delegation(id),
    FOREIGN KEY (second_delegation_id) REFERENCES Delegation(id)
);
