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
	 background-color: #f2f2f2;
    resize: vertical;
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

.col-50 {
    float: left;
    width: 50%;
    margin-top: 6px;
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
  <li><a href="fun_pro_fac.php" target= "frame1">Funded Project</a></li>
  <li><a class="active"href="pat_fac.php" target= "frame1">Patent</a></li>
</ul>
</nav>
<br>
<br>
<br>
<br>
<!-- view-->
<div class="container">
<?php
$sid=$_SESSION['sid'];
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac_funpat";
$sql1="SELECT * FROM `$aaa` WHERE sid = '$sid'";
	$result = $con->query($sql1);
	if ($result->num_rows > 0) 
	{		
echo'<br>';
			echo'<div class="row">';
			
			echo'<TABLE id="dataTable" width="100%" border="1">';
			echo'<TR>';
			echo'<TH>Academic Year</TH>';
			echo'<TH>Name of The Pattent</TH>';
			echo'<TH>Title </TH>';		
			echo'<TH>File No </TH>';	
			echo'</TR>';
		while($row = $result->fetch_assoc()) 
		{
			
			for( $i=1; $i<=$row["patkey"];$i++)
			{
				$nameofpat0="nameofpat".$i;
				$title0="title".$i;
				$fileno0="fileno".$i;
				
		
				echo'<TR>';
				echo'<TD><center>';
				echo $row["ayear"];
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row["$nameofpat0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$title0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$fileno0"];
				echo'</center></TD>';
				echo'</TR>';
        
			}
			
		}
	}
?>
</div>
<br>
<!-- close-->

<div class="container">
  <form action="pat_fac.php" method="post" enctype="multipart/form-data" onsubmit="return(validate());">
    <div class="row">
      <div class="col-25">
        <label class="required" for="fnameofpat">Academic Year</label>
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
        <label class="required" for="fname">Name of the patent</label>
      </div>  
	<div class="col-50">
        <input type="text" id="nameofpat" name="nameofpat" required>
      </div>
    </div>	  
    
	
	 <div class="row">
      <div class="col-25">
        <label class="required" for="fnameofpat">Title </label>
      </div>
      <div class="col-50">
        <input type="text" id="title" name="title" required>
      </div>
    </div>
	
	<div class="row">
      <div class="col-25">
        <label class="required" for="fnameofpat">File No.</label>
      </div>
	  <div class="col-50">
        <input type="text" id="fileno" name="fileno" required>
      </div>
    </div>
	  
	<div class="row" >
      <div class="col-25">
        <label class="required" for="lname">Document  (only PDF Format)</label>
		<label class="message" id="msg1" > </label>
      </div>
      <div class="col-75">
        <input type="file" id="file" name="file">
      </div>
    </div>
   
	
	 <div class="row">
      <br>
    </div>
	
    <div class="row">
      <input type="submit" value="Submit" name="submit">
    </div>
  </form>
</div>
<br>
</html>
<?php

if(isset($_POST["submit"])){
	
 $ayear=$_POST["ayear"];
 
 $nameofpat=$_POST["nameofpat"];
 $title =$_POST["title"];
 $fileno =$_POST["fileno"];
 
 $sid=$_SESSION['sid'];
 $deptid=$_SESSION['deptid'];
 $aaa=$deptid."_fac_funpat";
 

	if(empty($_FILES['file']['name']))
	{
		$final_file =0;
	}
	else
	{
	$file = $_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
	$file_size = $_FILES['file']['size'];
	$file_type = $_FILES['file']['type'];
	$folder="../../gallery/pro/".$aaa."/";
	// new file size in KB
	//$new_size = $file_size/1024;  
	// new file size in KB	
	// make file name in lower case
	$file=rand(1000,100000)."-".$file;
	$new_file_name = strtolower($file);;
	// make file name in lower case	
	$final_file=str_replace(' ','-',$new_file_name);
	$move=move_uploaded_file($file_loc,$folder.$final_file);
	}	
	$pat_cer=$final_file;
 
		
		$sql6 = "INSERT into `$aaa` (sid,ayear,nameofpat1,title1,fileno1,pat_cer,patkey) VALUES ('$sid','$ayear','$nameofpat','$title','$fileno','$pat_cer',1)";	
		if(mysqli_query($con,$sql6))
		{
			
			echo '<script language="javascript">alert("Pattent Details Inserted Successfully");</script>';
			echo '<script type="text/javascript">window.location.href = "pat_fac.php";</script>';
		}
		
	
}

?>
<script>
function validate()
{
	
	var valid = true;
	valid = valid && ad();
	 return valid;
	
}
 $('form').submit(validate);
</script>

<script>
function ad(){
var allowedFiles = [".pdf"];
        var fileUpload = document.getElementById("file");
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