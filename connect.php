 <?php
$servername = "modifiedshop-db";
$username = "root";
$password = "mysql";
$database = "modifiedshop";

$conn = new mysqli($servername, $username, $password, $ddatabase);

if ($conn->connect_error) {
  die("Database connection failed: " . $conn->connect_error);
}

echo "Successfully connected to database.";

