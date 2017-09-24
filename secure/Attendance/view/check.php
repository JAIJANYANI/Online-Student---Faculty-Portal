<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "5csdbms";

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
        echo "<br><br><br>Roll no: " . $row["sid"]. " || Day 1 --   " . $row["week1"]. " <br>|| Day 2 --   " . $row["week2"].
" ||<br> Day 3 --   " . $row["week3"]." || <br>Day 4 --   " . $row["week4"]." || <br>Day 5 --   " . $row["week1"]." ||<br> Day 6 --   " . $row["week1"]." ||<br> Day 7 --   " . $row["week1"]." ||<br> Day 8 --   " . $row["week1"]." || <br>Day 9 --   " . $row["week1"]." ||<br> Day 10 --   " . $row["week1"]." ||<br> Day 11 --   " . $row["week1"]." ||<br> Day 12 --   " . $row["week1"]." || <br>Day 13 --   " . $row["week1"]." ||<br> Day 14 --   " . $row["week1"]." || <br>Day 15 --   " . $row["week1"]." || <br>Day 16 --   " . $row["week1"]." ||<br> Day 17 --   " . $row["week1"]." || <br>Day 18 --   " . $row["week1"]." ||<br> Day 19 --   " . $row["week1"]." || <br>Day 20 --   " . $row["week1"].
		"<br>";
		$sum= $row["week1"]+ $row["week1"] +$row["week3"]+ $row["week4"] +$row["week5"]+ $row["week6"] +$row["week7"]+ $row["week8"] +$row["week9"]+ $row["week10"] +$row["week11"]+ $row["week12"] +$row["week13"]+ $row["week14"] +$row["week15"];
		echo "TOTAL ATTENDANCE :--";
		echo $sum;
		
    }
} else {
    echo "0 results";
}
$conn->close();
?>