Sporting Club Management System
Project Overview
The Sporting Club Management System is a web-based application designed to manage users, events, memberships, and inquiries for a sporting club. Built using ASP.NET Web Forms and MySQL, the system provides essential functionalities to streamline club operations and enhance user experience.
________________________________________
Key Features
User Management

•	Sign-Up: Allows users to register with validated credentials. 

•	Login: Authenticates users and redirects them to personalized dashboards. 

Events Management

•	Event Registration: Enables users to register for sporting events. 

•	Duplicate Check: Prevents users from registering for the same event multiple times.

Membership Management

•	Membership Registration: Allows users to select membership plans (Standard, Premium, VIP). 

•	Automatic Validity: Calculates membership start and end dates automatically (e.g., one year from the current date).

•	Validation: Ensures accurate associations between users and membership types.

Sports Information

•	Sports Descriptions: Provides detailed, dynamic descriptions of sports offered at the club. 

•	User Interaction: Updates details based on the user’s selection dynamically.

Contact Us

•	Inquiry Submission: Users can send feedback or queries via a contact form. 

•	Database Integration: Messages are stored in the Contacts table for future reference.

________________________________________
Technologies Used

•	Backend: ASP.NET Web Forms (C#)

•	Frontend: HTML, CSS

•	Database: MySQL

•	Libraries: MySql.Data by Oracle
________________________________________
Database Schema

The application uses a normalized database schema to ensure data integrity and prevent redundancy. Key tables include:
1.	Users: Stores user credentials and personal details.
2.	MembershipTypes: Tracks membership options and pricing.
3.	UserMemberships: Links users to their chosen memberships.
4.	Sports: Contains details about sports offered at the club.
5.	Events: Tracks events and their associated sports.
6.	EventRegistrations: Manages user registrations for events.
7.	Contacts: Stores user-submitted inquiries.
________________________________________
Setup Instructions

Prerequisites
1.	Install Visual Studio with ASP.NET Web Forms support.
2.	Install MySQL and set up a local database.
3.	Install MySQL Connector for .NET.


________________________________________
Highlights

1.	Dynamic Data Retrieval:
   
     o	Fetches sports descriptions dynamically from the database.

3.	Validation and Security:
   
     o	Enforces strong password policies during sign-up.

     o	Uses parameterized queries to prevent SQL injection.

5.	User Feedback:
   
     o	Provides clear success and error messages for all user actions.

7.	Clean Database Design:
   
     o	Fully normalized schema ensures data integrity and avoids redundancy.
________________________________________
Contributors

o	Salma Yasser

o	Jayan Ahmed

o	Zeina Ahmed

