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
</style>
 <nav class="navbar navbar-inverse navbar-fixed-top">

<ul>
  <h1 align="center">AWARD</h1>
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
			echo'<TH>Name of the Award</TH>';
			echo'<TH>Issued By</TH>';
			echo'<TH>Month & Year</TH>';			
			echo'</TR>';
		while($row = $result->fetch_assoc()) 
		{
			
			for( $i=1; $i<=$row["awakey"];$i++)
			{
				$aname0="aname".$i;
				$aissue0="aissue".$i;
				$amy0="amy".$i;
		
				echo'<TR>';
				echo'<TD><center>';
				echo $row["ayear"];
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row["$aname0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$aissue0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$amy0"];
				echo'</center></TD>';
				echo'</TR>';
        
			}
			
		}
	}
?>
</div>
<br>
<div class="container">

  <form action="awa_fac.php" method="post"  enctype="multipart/form-data" onsubmit="return(fileValidation());">
    <div class="row">
      <div class="col-25">
        <label class="required" for="fname">Academic Year</label>
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
        <label class="required" for="fname">Name of the Award</label>
      </div>  
	<div class="col-50">
        <input type="text" id="aname" name="aname" required>
      </div>
    </div>	  
    
	
	 <div class="row">
      <div class="col-25">
        <label class="required" for="fname">Issued By</label>
      </div>
      <div class="col-50">
        <input type="text" id="aissue" name="aissue" required>
      </div>
    </div>
	
	<div class="row">
      <div class="col-25">
        <label class="required" for="fname">Month & Year</label>
      </div>
	  <div class="col-50">
        <input type="month" id="amy" name="amy" required>
      </div>
    </div>
	  
	  
	 <div class="row">
      <div class="col-25">
        <label class="required" for="lname">Certificate (only PDF Format)</label>
		 <span id="msg1" style="color: red;"></span>
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
</div>
<script>
function fileValidation(){
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
 $aname=$_POST["aname"];
 $aissue =$_POST["aissue"];
 $amy =$_POST["amy"];
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
	$acer =$final_file1;	

		
		$sql6 = "INSERT into `$aaa` (sid,ayear,aname1,aissue1,amy1,acer1,awakey) VALUES ('$sid','$ayear','$aname','$aissue','$amy','$acer',1)";	
		if(mysqli_query($con,$sql6))
		{
			
			echo '<script language="javascript">alert("Award Details Inserted Successfully");</script>';
			echo '<script type="text/javascript">window.location.href = "awa_fac.php";</script>';
		}
		
	
}

?>