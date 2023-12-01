# Docker-Project
This project is a simple PHP-based web application for managing users and administrators. It includes user authentication, CRUD (Create, Read, Update, Delete) functionalities for both users and administrators. The application is containerized using Docker, making it easy to deploy across different environments.
features->
User Authentication:
Users can log in with their username and password.
Admins have access to additional functionalities.
User Management:
Admins can view a list of registered users.
Admins can perform CRUD operations on users (Create, Read, Update, Delete).
Prerequisites
Before you begin, ensure you have met the following requirements:
Docker installed on your local machine.
Installation
Clone the repository:
git clone https://github.com/NLC001/Docker-Project or downlosd the file
Build the Docker Image:
cd your-repo
docker build -t your-image-name .
Configure the Database:
Import the database schema from the provided SQL file (computers.sql).
Start the Docker Container:
docker run -p 8080:80 -d --name your-container-name your-image-name(any port of your choice)
Usage
Open the browser and navigate to http://localhost:5555/login.php.
Log in with your username and password.
Admins will be redirected to index.php where they can manage entries
Users will have access to their respective dashboard.

