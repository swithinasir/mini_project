
<html>
<body>
<form action="year1.php" method="post">
<input type="text" id="name" name="name">
<input type="password" id="pass" name="pass">
<input type="date" id="date" name="date">
<select name ="dept" id ="dept">
<option value="AER">AER</option>
<option value="MCA">MCA</option>
<option value="MBA">MBA</option>
</select>
 <input type="submit" name="submit" value="Submit">
 </form>
</body>
<?php

if(isset($_POST['submit']))
{
	
$servername='localhost';
$username='root';
$password='';
$dbname = "datacenter";
$conn=mysqli_connect($servername,$username,$password,$dbname);
if(!$conn){
die('Could not Connect My Sql:' .mysql_error());
}
$aaa="user";
$count=1001;
// variables for input data
$a=strtotime($_POST['date']);
$b=date("y", $a);
$de=$_POST['dept'];
$sql="SELECT * FROM `$aaa`";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
		
		$aa=strtotime($row['date']);
		$bb=date("y", $aa);
		if($b==$bb)
		{
			$count=$count+1;
		}
       
    }
}
$coun=substr($count, 1, 3);
$sid="S".$b.$de.$coun;
$name = $_POST['name'];
$pass = $_POST['pass'];
$date=$_POST['date'];
// sql query for inserting data into database

mysqli_query($conn,"insert into user(sid,username,password,date,dept) values ('$sid','$name','$pass','$date','$de')") or die(mysqli_error());
echo "<p align=center>Your STAFF ID is ".$sid."</p>";
}
?>