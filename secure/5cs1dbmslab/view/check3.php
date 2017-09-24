<?php
$servername = 'localhost';
$username = 'root';
$password = '';
$dbname = 'student2';

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT * FROM attendance";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "Roll no: " . $row["sid"]. " - Name:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  01-09-16   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp" . $row["week0109"]. "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 20-02-16&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp   " . $row["week2002"]. "<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>