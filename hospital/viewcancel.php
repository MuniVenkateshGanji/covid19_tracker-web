<?php

$servername = "localhost";
$username = "id13677849_appointments";
$password = "Scs110607@wenkey123";
$dbname = "id13677849_loser";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT * FROM cancel";
$result = mysqli_query($conn, $sql);
?>
<html>
<body>
<h1> Canceled Appointments</h1>
<table border="1">
  <tr>
    <td>Id</td>
  <td>First Name</td>
  <td>Phone No.</td>
</tr>
</table>
</body>
</html>
<?php
echo"<table border='1'>";
if (mysqli_num_rows($result) > 0) {

while($rows= mysqli_fetch_assoc($result))
{
echo "<tr>";
echo "<td>".$rows['id']."</td>";
echo "<td>".$rows['fname']."</td>";
echo "<td>".$rows['phone']."</td>";
echo "</tr>";
}
}else{
  echo "0 results";
}
echo "</table>";
 mysqli_close($conn)
?>

<html>
<style>
input{
  text-align: center;
  width: 15%;
  height: 7%;
  border-radius: 15px;
  margin: 5px;

}
form{
  text-align: center;
  margin-top: 5%;
}
</style>
<body>
  <form name="cancel" action="cancelappointment.php" method="post">
    <input type="number" name="phone" value="" placeholder="Phone No.">
    <input type="submit" name="submit" value="cancel Appointment">
  </form>
</body>
</html>
