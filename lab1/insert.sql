-- Insert data into City table
INSERT INTO City (id, name) VALUES
(1, 'CityA'),
(2, 'CityB'),
(3, 'CityC');

-- Insert data into Delegation table
INSERT INTO Delegation (id, delegation_leader, emotional_status, city_id) VALUES
(1, 'LeaderA', 'Happy', 1),
(2, 'LeaderB', 'Stressed', 2),
(3, 'LeaderC', 'Excited', 3);

-- Insert data into Advisor table
INSERT INTO Advisor (id, delegation_id, advisor_name, advisor_anxiety) VALUES
(1, 1, 'AdvisorA1', 'Low'),
(2, 1, 'AdvisorA2', 'Medium'),
(3, 2, 'AdvisorB1', 'High'),
(4, 3, 'AdvisorC1', 'Low'),
(5, 3, 'AdvisorC2', 'Medium');

-- Insert data into Meeting table
INSERT INTO Meeting (id, city_id, first_delegation_id, second_delegation_id) VALUES
(1, 1, 1, 2),
(2, 2, 2, 3),
(3, 3, 1, 3);
