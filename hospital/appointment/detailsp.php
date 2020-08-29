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
$sname= $_POST['sname'];
$phone= $_POST['phone'];
$mail= $_POST['mail'];
$age= $_POST['age'];
$gender= $_POST['gender'];
$problem= $_POST['problem'];
$hospital= $_POST['hospital'];
$doctor= $_POST['doctor'];
$address= $_POST['address'];

$sql = "INSERT INTO pdetails (fname, sname, phone, mail, age, gender, problem, hospital, doctor, address) VALUES ('$fname','$sname','$phone','$mail','$age','$gender','$problem','$hospital','$doctor','$address')";

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
header("refresh:2; url=../ex2.html");?>
