<?php
ob_start();
?>
<?php

include 'dbconfig.php';
$fname= $_POST['fname'];
$lname= $_POST['lname'];
$adhaar= $_POST['adhaar'];
$occupation= $_POST['occupation'];
$faname= $_POST['faname'];
$phone= $_POST['phone'];
$mail= $_POST['mail'];
$dob= $_POST['dob'];
$customRadioInline1= $_POST['customRadioInline1'];
$city= $_POST['city'];
$pin= $_POST['pin'];
$state= $_POST['state'];
$town= $_POST['town'];
$address= $_POST['address'];
$landmark= $_POST['landmark'];
$volunteer= $_POST['volunteer'];
$img= $_POST['img'];
$work= $_POST['work'];
$type= $_POST['type'];
$textarea= $_POST['textarea'];

$sql = "INSERT INTO volun (fname, lname, adhaar, occupation, faname, phone, mail, dob, customRadioInline1, city, pin, state, town, address, landmark, volunteer, img, work, type, textarea)
VALUES ('$fname','$lname','$adhaar','$occupation','$faname','$phone','$mail','$dob','$customRadioInline1','$city','$pin','$state','$town','$address','$landmark','$volunteer','$img','$work',
  '$type','$textarea')";

if (!mysqli_query($conn, $sql))
{
echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
else
{
echo 'Succsfull';
?>
<html>
<body style="text-align: center">
<h1><b>Thank You For Giving Your Details<b></h1>
<h3><b><i>We Will Update You Soon</i></b></h3>
</body>
</html>

<?php
}

header("refresh:1; url=volunteer.html");

?>
