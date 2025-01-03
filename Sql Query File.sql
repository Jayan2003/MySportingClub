-- CREATE DATABASE mysportingclub;
-- CREATE TABLE mysportingclub.Users (
--     userId INT AUTO_INCREMENT PRIMARY KEY,
--     username VARCHAR(255) UNIQUE NOT NULL,
--     email VARCHAR(255) UNIQUE NOT NULL,
--     password VARCHAR(255) NOT NULL,
--     firstName VARCHAR(255),
--     lastName VARCHAR(255),
--     registrationDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- CREATE TABLE mysportingclub.MembershipTypes (
--     membershipTypeId INT AUTO_INCREMENT PRIMARY KEY,
--     membershipName VARCHAR(255) UNIQUE NOT NULL,
--     description TEXT,
--     price DECIMAL(10, 2)
-- );

-- CREATE TABLE mysportingclub.UserMemberships (
--     userMembershipId INT AUTO_INCREMENT PRIMARY KEY,
--     userId INT,
--     membershipTypeId INT,
--     startDate DATE,
--     endDate DATE,
--     FOREIGN KEY (userId) REFERENCES Users(userId),
--     FOREIGN KEY (membershipTypeId) REFERENCES MembershipTypes(membershipTypeId)
-- );

-- CREATE TABLE mysportingclub.Sports (
--     sportId INT AUTO_INCREMENT PRIMARY KEY,
--     sportName VARCHAR(255) UNIQUE NOT NULL,
--     description TEXT
-- );

-- CREATE TABLE mysportingclub.Events (
--     eventId INT AUTO_INCREMENT PRIMARY KEY,
--     eventName VARCHAR(255) NOT NULL,
--     sportId INT,
--     eventDate DATE NOT NULL,
--     description TEXT,
--     FOREIGN KEY (sportId) REFERENCES Sports(sportId)
-- );

-- CREATE TABLE mysportingclub.EventRegistrations (
--     registrationId INT AUTO_INCREMENT PRIMARY KEY,
--     userId INT,
--     eventId INT,
--     registrationDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     FOREIGN KEY (userId) REFERENCES Users(userId),
--     FOREIGN KEY (eventId) REFERENCES Events(eventId)
-- );

-- CREATE TABLE mysportingclub.Contacts (
--     contactId INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(255) NOT NULL,
--     email VARCHAR(255) NOT NULL,
--     message TEXT NOT NULL,
--     contactDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );
-- Insert sample data into Users table
-- INSERT INTO mysportingclub.Users
-- VALUES
--     (1,'john_doe', 'john.doe@example.com', 'john1234', 'John', 'Doe',"2021-01-01"),
--     (2,'jane_smith', 'jane.smith@example.com', 'jane1234', 'Jane', 'Smith',"2022-02-09"),
--     (3,'david_lee', 'david.lee@example.com', 'david1234', 'David', 'Lee',"2023-09-09");

-- SELECT * FROM mysportingclub.Contacts
-- INSERT INTO mysportingclub.Sports (sportName, description)
-- VALUES 
-- ('Soccer', 'Soccer is one of the most popular sports in the world. Play exciting matches on well-maintained fields.'),
-- ('Basketball', 'Basketball is a high-energy sport that combines athleticism and teamwork. Join leagues and play on professional courts.'),
-- ('Swimming', 'Swimming is perfect for relaxation and fitness. Enjoy our Olympic-sized pools with certified trainers.'),
-- ('Tennis', 'Tennis challenges your skills and strategy. Play singles or doubles on well-maintained courts.');


-- INSERT INTO mysportingclub.Events (eventId, eventName, sportId, eventDate, description)
-- VALUES 
-- (1, 'Soccer Tournament', 1, '2024-04-15', 'Join us for a thrilling soccer tournament featuring top teams.'),
-- (2, 'Swimming Competition', 2, '2024-04-20', 'Show off your swimming skills in our exciting competition.'),
-- (3, 'Tennis Championship', 3, '2024-04-25', 'Participate in the ultimate tennis championship.');

-- SELECT * 
-- FROM mysportingclub.Users

-- INSERT INTO mysportingclub.MembershipTypes (membershipName, description, price)
-- VALUES
-- ('Standard Membership', 'Access to sports facilities and social events. Ideal for individuals and families.', 500.00),
-- ('Premium Membership', 'Includes access to all facilities, events, and discounts on additional services.', 1000.00),
-- ('VIP Membership', 'All-inclusive: priority access to events, personal locker, and exclusive VIP lounge access.', 2000.00);

-- INSERT INTO mysportingclub.Users
-- VALUES
--     (7,'sara_ahmed', 'saraahmed@gmail.com', 'sara1234', 'sara', 'ahmed',"2021-01-06");


-- DELETE FROM mysportingclub.Users
-- WHERE userId = 13;
-- INSERT INTO mysportingclub.Users
-- VALUES
--     (7,'sara_ahmed', 'saraahmed@gmail.com', 'sara1234', 'sara', 'ahmed',"2021-01-06");

-- SELECT a.userMembershipid,b.userId,b.username
-- FROM  mysportingclub.UserMemberships a
-- INNER JOIN mysportingclub.Users b
-- ON b.userId=a.userId
-- group by a.userMembershipid,b.userId,b.username
-- ORDER BY userMembershipid

SELECT *
FROM mysportingclub.Contacts

-- SELECT *
-- FROM mysportingclub.Users



