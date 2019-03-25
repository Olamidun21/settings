<?php
$conn= mysqli_connect("localhost","root","","settings_db");
// $query1=mysqli_query($conn, "select sum(select value1 from ) from settings_db";)
$query = mysqli_query($conn, "select * from settings_tb");
$m= mysqli_fetch_all($query, MYSQLI_ASSOC);
$j = json_encode($m);
echo $j;

?>