<?php
session_start();
include("../../conn/config.php");

?>
<html>


<style>

.required:after { content:" *";color: #e32; }


* {
    box-sizing: border-box;
}

input[type=text],td, select, textarea {
   
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
	 background-color: #f2f2f2;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
}

input[type=submit]:hover {
    background-color: #45a049;
}


.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-75 {
    float: left;
    width: 75%;
    margin-top: 6px;
}
.col-50 {
    float: left;
    width: 50%;
    margin-top: 6px;
}
/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .col-25, .col-50, .col-75, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}
</style>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/style.min.css" rel="stylesheet">

<style>
.active {
  background-color: #333;
  color: white;
}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: Skyblue;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 16px 50px;
	border-right:2px solid #bbb;

    text-decoration: none;
}

li a:hover {
    background-color: #111;
}
.message{color:#FF0000;
font-size: small;
font-weight: bold; 
white-space: pre;
}
</style>
 <nav class="navbar navbar-inverse navbar-fixed-top">

<ul>
  <h1 align="center">MEMBERSHIP</h1>
</ul>
</nav>
<br>
<br>
<br>
<br>
<div class="container">
<?php
$sid=$_SESSION['sid'];
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac_member";
$sql1="SELECT * FROM `$aaa` WHERE sid = '$sid'";
	$result = $con->query($sql1);
	if ($result->num_rows > 0) 
	{		
echo'<br>';
			echo'<div class="row">';
			
			echo'<TABLE id="dataTable" width="100%" border="1">';
			echo'<TR>';
			echo'<TH>Academic Year</TH>';
			echo'<TH>Society Name</TH>';
			echo'<TH>Membership ID</TH>';
			echo'<TH>Validity</TH>';			
			echo'</TR>';
		while($row = $result->fetch_assoc()) 
		{
			
			for( $i=1; $i<=$row["memkey"];$i++)
			{
				$name0="name".$i;
				$memberid0="memberid".$i;
				$validity0="validity".$i;
		
				echo'<TR>';
				echo'<TD><center>';
				echo $row["ayear"];
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row["$name0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$memberid0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$validity0"];
				echo'</center></TD>';
				echo'</TR>';
        
			}
			
		}
	}
?>
</div>
<br>
<div class="container">

  <form action="mem_fac.php" method="post" enctype="multipart/form-data" onsubmit="return(validate());">
    <div class="row">
      <div class="col-25">
        <label for="fname" class="required">Academic Year</label>
      </div>
      <div class="col-25">
       <select name="ayear" required>
	<?php
$end=date("Y");
if(date("m")<6)
{
	$end=$end-1;
}
for($i=1987;$i<=$end;$i++)
{
	$cu=$i+1;
	$j=$i."-".$cu;
	echo"<option value='". $j ."'> ",$j,"</option>";
}
?> 
</select>
      </div>
    </div>
	 <div class="row">
      <div class="col-25">
        <label for="fname" class="required">Name of the Profesional Society</label>
      </div>  
	<div class="col-50">
        <input type="text" id="name" name="name" required>
      </div>
    </div>	  
    
	
	 <div class="row">
      <div class="col-25">
        <label for="fname" class="required">Membership ID</label>
      </div>
      <div class="col-50">
        <input type="text" id="memberid" name="memberid" required>
      </div>
    </div>
	
	<div class="row">
      <div class="col-25">
        <label for="fname" class="required">Validity Period</label>
      </div>
	  <div class="col-50">
        <input type="text" id="validity" name="validity" required>
      </div>
    </div>
	  
	 <div class="row">
      <div class="col-25">
        <label for="lname" class="required">ID Proof (Only PDF Format)</label>
		<label class="message" id="msg1" > </label>
      </div>
      <div class="col-75">
        <input type="file" id="file1" name="file1">
      </div>
    </div>
   
	
	 <div class="row">
      <br>
    </div>
	
    <div class="row">
      <input type="submit" value="Submit" name="submit">  
    </div>
	<div class="row">
      <br>
    </div>
  </form>
  <script>
  function validate()
{
	
	var valid = true;
	valid = valid && ad();
	 return valid;
	
}
 $('form').submit(validate);
</script>
</div>
<script>
function ad(){
var allowedFiles = [".pdf"];
        var fileUpload = document.getElementById("file1");
        var lblError = document.getElementById("msg1");
        var regex = new RegExp("([a-zA-Z0-9\s_\\.\-:])+(" + allowedFiles.join('|') + ")$");
        if (!regex.test(fileUpload.value.toLowerCase())) {
            lblError.innerHTML = "Please upload files having extensions: <b>" + allowedFiles.join(', ') + "</b> only.";
            return false;
        }
        lblError.innerHTML = "";
        return true;

}
</script>
</html>
<?php

if(isset($_POST["submit"])){
	
 $ayear=$_POST["ayear"];
 $name=$_POST["name"];
 $memberid =$_POST["memberid"];
 $validity =$_POST["validity"];
 $sid=$_SESSION['sid'];
 $deptid=$_SESSION['deptid'];
 $aaa=$deptid."_fac_member";
 

	if(empty($_FILES['file1']['name']))
	{
		$final_file1 =0;
	}
	else
	{
	$file1 = $_FILES['file1']['name'];
    $file_loc1 = $_FILES['file1']['tmp_name'];
	$file_size1 = $_FILES['file1']['size'];
	$file_type1 = $_FILES['file1']['type'];
	$folder1="../gallery/gl/".$aaa."/";
	// new file size in KB
	$new_size1 = $file_size1/1024;  
	// new file size in KB	
	// make file name in lower case
	$file1=rand(1000,100000)."-".$file1;
	$new_file_name1 = strtolower($file1);;
	// make file name in lower case	
	$final_file1=str_replace(' ','-',$new_file_name1);
	$move1=move_uploaded_file($file_loc1,$folder1.$final_file1);
	}
	$pic =$final_file1;
 
		
		$sql6 = "INSERT into `$aaa` (sid,ayear,name1,pic1,memberid1,validity1,memkey) VALUES ('$sid','$ayear','$name','$pic','$memberid','$validity',1)";	
		if(mysqli_query($con,$sql6))
		{
			
			echo '<script language="javascript">alert("Membership Details Inserted Successfully");</script>';
			echo '<script type="text/javascript">window.location.href = "mem_fac.php";</script>';
		}
		
	
}

?>