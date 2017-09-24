<?php
   $dbhost = 'localhost';
   $dbuser = 'root';
   $dbpass = '';
   
   @$conn = mysql_connect($dbhost, $dbuser, $dbpass);
   
   if(! $conn ) {
      die('Could not connect: ' . mysql_error());
   }
   
   $sql = 'SELECT * FROM attendance';
   mysql_select_db('attendance');
   $retval = mysql_query( $sql, $conn );
   
   if(! $retval ) {
      die('Could not get data: ' . mysql_error());
   }
   
   while($row = mysql_fetch_array($retval, MYSQL_NUM)) {
      echo "Roll no :{$row[0]}  <br> ".
         "Day 1 : {$row[1]} <br> ".
         "Day 2 : {$row[2]} <br> ".
		 "Day 3 : {$row[3]} <br> ".
         "Day 4 : {$row[4]} <br> ".
		 "Day 5 : {$row[5]} <br> ".
         "Day 6 : {$row[6]} <br> ".
		 "Day 7 : {$row[7]} <br> ".
         "Day 8 : {$row[8]} <br> ".
		 "Day 9 : {$row[9]} <br> ".
         "Day 10 : {$row[10]} <br> ".
		 "Day 11 : {$row[11]} <br> ".
         "Day 12 : {$row[12]} <br> ".
         "--------------------------------<br>";
   }
   
   echo "Fetched data successfully\n";
   
   mysql_close($conn);
?>