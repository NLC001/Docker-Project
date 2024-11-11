# Docker-Project
This project is a simple PHP-based web application for managing users and administrators. It includes user authentication, and CRUD (Create, Read, Update, Delete) functionalities for both users and administrators. The application is containerized using Docker, making it easy to deploy across different environments.

features->
User Authentication: Users can log in with their username and password.
Admins have access to additional functionalities.

User Management: Admins can view a list of registered users.
Admins can perform CRUD operations on users (Create, Read, Update, Delete).

Prerequisites
Before you begin, ensure you have met the following requirements:
Docker installed on your local machine.

Installation

Clone the repository:
git clone https://github.com/NLC001/Docker-Project or download the file

Build the Docker Image:
cd your-repo
docker build -t your-image-name .

Configure the Database:
Import the database schema from the provided SQL file (computers.sql).

Start the Docker Container:
docker run -p 8080:80 -d --name your-container-name your-image-name(any port of your choice)
(Replace 8080 and your-container-name as needed)

Usage
Open the browser and navigate to http://localhost:5555/login.php.
Log in with your username and password.
Admins will be redirected to index.php where they can manage entries
Users will have access to their respective dashboards.

Diagrams
To provide a clear understanding of the architecture, design, and workflow, the following diagrams illustrate different aspects of the application:

1. Use Case Diagram
This diagram provides an overview of how different users (User and Admin) interact with the application:
Actors:
User: Can log in and access their dashboard.
Admin: Has access to additional functionalities, including user management.
Use Cases:
Log In: Both User and Admin login to access the application.
View Dashboard: After login, users are redirected to different dashboards based on their role.
Perform CRUD Operations: Admins have full CRUD capabilities to manage user records.

2. Class Diagram
The Class Diagram shows the core structure of the application, including:
User: Basic user entity with attributes like username and password.
Admin: Inherits from User, with additional attributes like adminID and privileges.
Authentication: Handles login and logout methods, validating user credentials.
Database: Manages connections and query functions for interacting with data.
CRUD: Provides Create, Read, Update, and Delete operations for user records.

3. Sequence Diagram
This diagram shows the step-by-step sequence of actions for the application’s main functionalities:
User Login:
Users enter their credentials, which are verified by the Authentication module through the Database.
Admin CRUD Operations:
After login, Admins can perform CRUD operations to manage user records, with each action interacting with the Database to retrieve or modify data.

4. Deployment Diagram
The Deployment Diagram visualizes how the application is deployed using Docker:
User's Device: The user accesses the application via a web browser.
Docker Container: Hosts both the web server (running the PHP application) and the database server.
Web Server and Database Server: Both are isolated in the container, allowing easy deployment across environments.

5. ER Diagram (Entity-Relationship Diagram)
The ER Diagram provides an overview of the database schema, showing the relationships between tables:
User: Contains essential fields for all users.
Admin: Extends the User entity with admin-specific attributes.
Relationships: Defines connections between users and their roles, as well as CRUD functionalities managed by admins.


GROUP MEMBERS
NMOSE LUCKY - 40703
YANIKE CLAVINA - 41395
BIRUK ZENEBE - 41832
KEVIN KYAMBADDE MUYANJA - 41697
SARAH AHMED - 41569
MITCHELL NASUKU -39770
MUNASHE CHARE - 37829
