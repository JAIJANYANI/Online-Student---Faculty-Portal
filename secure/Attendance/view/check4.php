
<?php
   $dbhost = 'localhost';
   $dbuser = 'root';
   $dbpass = '';
   
   @$conn = mysql_connect($dbhost, $dbuser, $dbpass);
   
   if(! $conn ) {
      die('Could not connect: ' . mysql_error());
   }
   
   
   mysql_select_db('5csdbms');
  
   
   
$res = mysql_query("SELECT * FROM attendance");
$rows_count = mysql_num_rows($res);
echo '<table>';
for($i=0; $i<$rows_count; $i++)
{
    echo '<tr>';
    $row = mysql_fetch_row($res);
    for($r=0;$r<count($row);$r++)
    {
        echo '<td>';
        echo $row[$r];
		echo "&nbsp&nbsp&nbsp&nbsp";
        echo '</td>';   
    }
    echo '</tr>';
}
echo '</table>';
   
   mysql_close($conn);
?>

