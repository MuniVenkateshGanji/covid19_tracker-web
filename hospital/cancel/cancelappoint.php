<?php
ob_start();
?>
<?php

$con = mysqli_connect('localhost', 'id13677849_appointments', 'Scs110607@wenkey123');
if(!$con)
{
die('could not connect:'.mysqli_error());
}
if(!mysqli_select_db($con,'id13677849_loser'))
{
  echo 'Database not selected';
}

$fname= $_POST['fname'];
$phone= $_POST['phone'];

$sql = "INSERT INTO cancel (fname, phone) VALUES ('$fname','$phone')";

if(!mysqli_query($con, $sql))
{
echo 'details not inserted';
}
else
{
echo 'Inserted';
}
?>
<html>
<body style="text-align: center">
<h1><b>Thank You For Giving Your Details<b></h1>
<h3><b><i>We Will Update You Soon</i></b></h3>
</body>
</html>
<?php
header("refresh:2; url=../ex2.html");
?>
