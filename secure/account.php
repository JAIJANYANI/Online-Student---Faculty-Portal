<?php

	//starting session
	session_start();

	//if session doesn't exist
	if(!$_SESSION['user']){

	    echo("<script>window.location = '../index.html'</script>");
		exit();
	}

	//including database coonection file
    include 'dbc.php';
	
    //getting username
    $username = $_SESSION['user'];
	ECHO "<h4>Hi! &nbsp$username</h4>";

	//if logged in user is student
    if($_SESSION['role']==1){
    	
    	$sql = "SELECT * FROM sessions where username= '$username' ;";
    	$result = $conn->query($sql);
    	$total_sessions = $result->num_rows;

    	//calculating attendance
    	$sql = "SELECT * FROM sessions where username= '$username' and status = 'present';";
    	$resultTMP = $conn->query($sql);
    	$present_sessions = $resultTMP->num_rows;
    	@$att_per = ($present_sessions/$total_sessions) * 100 ;
    
    	if($att_per < 75){

    		$status_msg = "<span class='red-bg'>Your Attendance is below than the required attendance (i.e. less than 75%)</span>"	;

    	}
    	else if($att_per >= 85){

    		$status_msg = "<span class='green-bg'>Your Attendance is going good.</span>";

    	}
    	else{

    		$status_msg = "<span class='yellow-bg'>Your Attendance may fall short of required attendance (i.e. less than 85).</span>";
    	}
    }	
    //if logged in user is teacher
    else if($_SESSION['role']==2){
    	
    	$sql = "SELECT * FROM sessions where userNameTeacher='$username' group by sessionID;";
    	$result = $conn->query($sql);
    }

?>
<!--html-->
<!doctype html>
<html lang="en">
	<!--meta information-->
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="icon" type="image/png" href="images/logo.png">
		<title>UCE Management Portal</title>
		<link rel="stylesheet" href="../css/normalize.css">
		<link rel="stylesheet" href="../css/skeleton.css">
		<link rel="stylesheet" href="../css/style.css">
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800" type="text/css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
		<!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
	</head>
	<!--content-->
	<body>
		<!--header-->
	    <header>
	    	<div class="container">
	    		<div class="row">
					<div class="nine columns">
						<h5 style="font-weight:bold;"><span style="color:#35bcf2;"><i class="fa fa-users"></i></span> UCE  Management Portal</h5>
					</div>
			    </div>	
			</div>    	
	    </header>
	    <!--main wrapper-->
	    <div class="wrapper">
		    <br><br><br>
		    <h3 class="grey">Holidays Left</h3>
		    <br>
		    <?php if($_SESSION['role']==1){echo $status_msg; } ?>
		    <br><br><br>
		    <table>
			
		    	<tr>
		    		
		    		<th>Casual Leave </th>
					<th>Paid Leave</th>
					<th>Sick Leave </th>
					<th>Privilege Leave </th>
		    		
	    			
		    	</tr>
		    	<?php

					if ($result->num_rows > 0) {
					
						if($_SESSION['role']==1)
						while($row = $result->fetch_assoc()) {
						echo "<tr><td>".$row["id"]."</td><td>".$row["name"]."</td><td>".$row["date"]."</td><td>".$row["status"]."</td></tr>";
						}
						else if($_SESSION['role']==2)
						while($row = $result->fetch_assoc()) {
						echo "<tr><td>".$row["CL"]."</td><td>".$row["PL"]."</td><td>".$row["CA"]."</td><td>".$row["PA"]."</td></tr>";
						}											} else {
					echo "<br><br>No sessions were found!<br><br>";
					}

		    	?>
		    <table>
			<br>
			<br>
			<div  style="font-family:verdana;font-size:13px;"><a  target="_top" href="Registration/index.php"><h3>Request For a Leave</h3><br>
        </a>
		<br>
		<br>
		
		<br>
		<br>
		
		
				  <br>
		    <a href="logout.php" class="button">Logout</a>
		</div>			
	</body>
</html>