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

$fname= $_POST['fname'];
$old= $_POST['old'];
$state= $_POST['state'];
$phone= $_POST['phone'];
$journey= $_POST['journey'];
$problem= $_POST['problem'];
$symptoms= $_POST['symptoms'];

$sql = "INSERT INTO survey (fname, old, state, phone, journey, problem, symptoms) VALUES ('$fname','$old','$state','$phone','$journey','$problem','$symptoms')";

if (!mysqli_query($conn, $sql))
{
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
else {
echo ' Thank you ';
?>
<html>
<body style="text-align: center">
<h1><b>Thank You For Giving Your Details<b></h1>
</body>
</html>

<?php
}

header("refresh:1; url=dashboard.html");

?>
