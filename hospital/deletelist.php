<?php
ob_start();
?>
<?php
$servername = "localhost";
$username = "id13677849_appointments";
$password = "Scs110607@wenkey123";
$dbname = "id13677849_loser";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
if(!mysqli_select_db($conn,'id13677849_loser'))
{
  echo 'Database not selected';
}
$phone=$_POST['phone'];
// sql to delete a record
$sql = "DELETE FROM pdetails WHERE phone =$phone";

if (mysqli_query($conn, $sql)) {
  echo "Record deleted successfully";
} else {
  echo "Error deleting record: " . mysqli_error($conn);
}

mysqli_close($conn);

header("refresh:1; url=paticants.php")
?>
