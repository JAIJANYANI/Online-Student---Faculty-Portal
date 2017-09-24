<?php

	//credentials
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbName = "adminlogin";

	//making connection
	$conn = new mysqli($servername, $username, $password, $dbName);

	//testing connection
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
		
	}
	
?>