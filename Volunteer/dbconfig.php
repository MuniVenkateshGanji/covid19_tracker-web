<?php
ob_start();
?>
<?php

$servername = "localhost";
$username = "id13677849_appointments";
$password = "Scs110607@wenkey123";
$dbname = "id13677849_loser";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
if(!mysqli_select_db($conn, $dbname))
{
  echo 'Database not selected';
}
?>
