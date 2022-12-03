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

input[type=text],input[type=date], td, select, textarea {
 
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

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .col-25, .col-75, input[type=submit] {
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
<script>
function compare1()
{
 var startDt = document.getElementById("doj").value;
var today = new Date();
var date3 = new Date(startDt);
if((date3 < today)) 
{	

	 document.getElementById('message1').style.display="none";
	return( true );

}
else
{
	 document.getElementById('message1').style.display="block";
		document.getElementById('message1').innerHTML="Invalid Date";
		return false;
}
   }

function compare()
{
    var startDt = document.getElementById("doj").value;
    var endDt = document.getElementById("dor").value;
var today = new Date();
var date3 = new Date(endDt);
if((date3 < today)) 
{	

		if( (new Date(startDt).getTime() < new Date(endDt).getTime()))
		{
			document.getElementById('message').style.display="none";
			return( true );
		}
		else
		{
			document.getElementById('message').style.display="block";
			document.getElementById('message').innerHTML="Invalid Date,it should be after the DOJ";
			return false;
		}

}
else
{
	 document.getElementById('message').style.display="block";
		document.getElementById('message').innerHTML="Invalid Date";
	return false;
}
}

function validate()
{
	
	var valid = true;
	valid = valid && compare1();
	valid = valid && ad();
	valid = valid && compare();
	 return valid;
	
}
 $('form').submit(validate);
</script>

 <nav class="navbar navbar-inverse navbar-fixed-top">

<ul>
<li><a href="exp_in_fac.php" target= "frame1">Inhouse</a></li>
   <li><a href="exp_ot_fac.php" target= "frame1" >Other College</a></li>
  <li><a href="exp_pol_fac.php" target= "frame1">Polytechnic</a></li>
  <li><a class="active" href="exp_sc_fac.php" target= "frame1">Schools</a></li>
   <li><a href="exp_ind_fac.php" target= "frame1">Industry</a></li>   
   <li><a href="exp_oth_fac.php" target= "frame1">Others</a></li>    
</ul>
</nav>
<br>
<br>
<br><br>

<!-- view-->
<div class="container">
<?php
$sid=$_SESSION['sid'];
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac_exp";
$sql1="SELECT * FROM `$aaa` WHERE sid = '$sid'";
	$result = $con->query($sql1);
	if ($result->num_rows > 0) 
	{		
echo'<br>';
			echo'<div class="row">';
			
			echo'<TABLE id="dataTable" width="100%" border="1">';
			echo'<TR>';
			echo'<TH>Name of the School</TH>';
			echo'<TH>Designation</TH>';
			echo'<TH>Date of Joining</TH>';
			echo'<TH>Date of Relive</TH>';
			echo'<TH>Reason for Relive </TH>';
			echo'<TH>Total Experience </TH>';
			echo'</TR>';
		while($row = $result->fetch_assoc()) 
		{
			
			for( $i=1; $i<=$row["schkey"];$i++)
			{
				$sch0="sch".$i;
				$schdesg0="schdesg".$i;
				$schdoj0="schdoj".$i;
				$schdor0="schdor".$i;
				$schreason0="schreason".$i;
				
				$date1 = $row["$schdoj0"];
				$date2 = $row["$schdor0"];

				$diff = abs(strtotime($date2) - strtotime($date1));
				$years = floor($diff / (365*60*60*24));
				$months = floor(($diff - $years * 365*60*60*24) / (30*60*60*24));
				$days = floor(($diff - $years * 365*60*60*24 - $months*30*60*60*24)/ (60*60*24));
				
		
				echo'<TR>';
				echo'<TD><center>';
				echo $row["$sch0"];
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row["$schdesg0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$schdoj0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$schdor0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$schreason0"];
				echo'</center></TD>';
				echo'<TD><center>';
				printf("%d years, %d months, %d days\n", $years, $months, $days);
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
  <form action="exp_sc_fac.php" method="post"  id = "form"enctype="multipart/form-data" onsubmit="return(validate());">
    
	 <div class="row">
      <div class="col-25">
        <label class="required" for="fname">Name of the School</label>
      </div>  
	<div class="col-75">
        <input type="text" id="sch" name="sch" required>
      </div>
    </div>	  
    
	<div class="row">
      <div class="col-25">
        <label class="required" for="lname">Designation </label>
      </div>
      <div class="col-75">
        <input type="text" id="desg" name="desg" required>
      </div>
    </div>
	 <div class="row">
      <div class="col-25">
        <label class="required" for="fname">Date of Joining</label>
      </div>
      <div class="col-25">
        <input type="date" id="doj" name="doj" onblur="return(compare1());"   required>
       <label style="display:none" class="message" id="message1" >
      </div>
    </div>
	
	<div class="row">
      <div class="col-25">
        <label class="required" for="fname">Date of Relive</label>
      </div>
	  <div class="col-25">
        <input type="date" id="dor" name="dor" onblur="return(compare());"  required>
      <label style="display:none" class="message" id="message" >
      </div>
    </div>
	  
	 
   
	<div class="row">
      <div class="col-25">
        <label class="required" for="lname">Reason for Relive </label>
      </div>
      <div class="col-75">
        <input type="text" id="reason" name="reason" required>
      </div>
    </div>
	
	<div class="row">
      <div class="col-25">
        <label class="required" for="lname">Experience Certificate (only PDF Format)</label>
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
  </form>
</div>
<br>
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
	
 $sch=$_POST["sch"];
 $schdesg=$_POST["desg"];
 $schdoj =$_POST["doj"];
 $schdor=$_POST["dor"];
 $schreason =$_POST["reason"];

 $sid=$_SESSION['sid'];
 $deptid=$_SESSION['deptid'];
 $aaa=$deptid."_fac_exp";
 
 $sql1="SELECT * FROM dept WHERE deptid = '$deptid'";
 $result = $con->query($sql1);
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$tablekey=$row["schokey"];
		
		}
	}
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
	$folder1="../gallery/exp/".$aaa."/";
	// new file size in KB
	//$new_size1 = $file_size1/1024;  
	// new file size in KB	
	// make file name in lower case
	$file1=rand(1000,100000)."-".$file1;
	$new_file_name1 = strtolower($file1);;
	// make file name in lower case	
	$final_file1=str_replace(' ','-',$new_file_name1);
	$move1=move_uploaded_file($file_loc1,$folder1.$final_file1);
	}
	$schcir =$final_file1;
 $sql2="SELECT * FROM `$aaa` WHERE sid = '$sid'";
 $result2 = $con->query($sql2);
	if ($result2->num_rows > 0) {
		while($row2 = $result2->fetch_assoc()) {
			$schkey=$row2["schkey"];
			
			if($tablekey == $schkey)
			{
				$schreason2="schreason".$schkey;
				$tablekey=$tablekey+1;
				$schkey=$schkey+1;
				
				$sch1="sch".$schkey;
				$schdesg1="schdesg".$schkey;
				$schdoj1="schdoj".$schkey;
				$schdor1="schdor".$schkey;
				$schcir1="schcir".$schkey;
				$schreason1="schreason".$schkey;				
			
				$sql3="ALTER TABLE `$aaa` ADD `$sch1` VARCHAR(50) NOT NULL AFTER `$schreason2`, 				
										  ADD `$schdesg1` VARCHAR(50) NOT NULL AFTER `$sch1`,
										  ADD `$schdoj1` DATE NOT NULL AFTER `$schdesg1`, 	
										  ADD `$schdor1` DATE NOT NULL AFTER `$schdoj1`, 	
										  ADD `$schcir1` DATE NOT NULL AFTER `$schdoj1`, 										  
										  ADD `$schreason1` VARCHAR(100) NOT NULL AFTER `$schdor1`";				
				if(mysqli_query($con,$sql3))
				{
				
					$sql4 = "UPDATE `$aaa` SET `$sch1`='$sch',
												`$schdesg1`='$schdesg',
												`$schdoj1`='$schdoj',
												`$schdor1`='$schdor',
												`$schcir1`='$schcir',
												`$schreason1`='$schreason',											
												`schkey`='$schkey' WHERE sid= '$sid'";
					if(mysqli_query($con,$sql4))
					{
						$sql5 = "UPDATE dept SET `schokey`='$tablekey' WHERE deptid = '$deptid'";
						if(mysqli_query($con,$sql5))
						{
							echo '<script language="javascript">alert("School Experience Details Inserted Successfully");</script>';
							//header("Location: mem_fac.php");
						}
						
					}
					
				}
				
			}
			else
			{
				$schkey=$schkey+1;
				$sch1="sch".$schkey;
				$schdesg1="schdesg".$schkey;
				$schdoj1="schdoj".$schkey;
				$schdor1="schdor".$schkey;
				$schcir1="schcir".$schkey;
				$schreason1="schreason".$schkey;
				
			
				$sql4 =  "UPDATE `$aaa` SET `$sch1`='$sch',
												`$schdesg1`='$schdesg',
												`$schdoj1`='$schdoj',
												`$schdor1`='$schdor',
												`$schcir1`='$schcir',
												`$schreason1`='$schreason',											
												`schkey`='$schkey' WHERE sid= '$sid'";
				if(mysqli_query($con,$sql4))
				{
					
					echo '<script language="javascript">alert("School Experience Details Inserted Successfully");</script>';
					//header("Location: mem_fac.php");
				}
				
			}
		}
	}
	else{
		
		$sql6 = "INSERT into `$aaa` (sid,sch1,schdesg1,schdoj1,schdor1,schreason1,schcir1,schkey) VALUES ('$sid','$sch','$schdesg','$schdoj','$schdor','$schreason','$schcir',1)";	
		if(mysqli_query($con,$sql6))
		{
			 echo "".$level."".$res;
			echo '<script language="javascript">alert("School Experience Details Inserted Successfully");</script>';
			//header("Location: mem_fac.php");
		}
		
	}
}

?>