<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Database connection parameters
$host = 'mydb';
$username = 'root';
$password = '6%b48fCbUNZPfnQ';
$database = 'computers';

// Create a connection to the database
$conn = mysqli_connect($host, $username, $password, $database);

// Check the connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

