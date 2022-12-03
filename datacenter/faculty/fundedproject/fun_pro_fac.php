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

input[type=text],input[type=date],td, select, textarea {

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
.col-50 {
    float: left;
    width: 50%;
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
    .col-25,.col-50, .col-75, input[type=submit] {
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
<script language="Javascript">
function hideA()
{  
    document.getElementById("B").style.visibility="visible";    
}

function hideB()
{
    document.getElementById("B").style.visibility="hidden";
}

</script>
<script>
function validate()
{
	 var status = document.getElementById("status").value;
	 if( status == "ongoing")
	 {
		 	var valid = true;	
			valid = valid && ad1();
			return valid;
	 }
	 else
	 {
		 	var valid = true;	
			valid = valid && ad1();
			valid = valid && ad();
			return valid;
	 }

	
}
 $('form').submit(validate);
</script>

</script>
 <nav class="navbar navbar-inverse navbar-fixed-top">

<ul>
  <li><a class="active"href="fun_pro_fac.php" target= "frame1">Funded Project</a></li>
  <li><a href="pat_fac.php" target= "frame1">Patent</a></li>
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
			echo'<TH>Title of Project</TH>';
			echo'<TH>Duration </TH>';
	echo'<TH>Amount </TH>';
	echo'<TH>Agency </TH>';
	echo'<TH>Starting Date </TH>';
	echo'<TH>Co-pi Name </TH>';	
	echo'<TH>Year of Complition </TH>';	
			echo'</TR>';
		while($row = $result->fetch_assoc()) 
		{
			
			for( $i=1; $i<=$row["funkey"];$i++)
			{
				$titleofpro0="titleofpro".$i;
				$duration0="duration".$i;
				$amountsan0="amountsan".$i;
				$agency0="agency".$i;
				$startdate0="startdate".$i;
				$copiname0="copiname".$i;
				$year0="year".$i;
				
		
				echo'<TR>';
				echo'<TD><center>';
				echo $row["ayear"];
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row["$titleofpro0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$duration0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$amountsan0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$agency0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$startdate0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$copiname0"];
				echo'</center></TD>';
				if($row["$year0"]==0)
				{
					echo'<TD><center>';
					echo 'OnGoing';
					echo'</center></TD>';
					echo'<TD><center>';
					?>
					<form action="fun_pro_fac1.php" method="post">
					<input type="hidden" name="id" value="<?php echo $row['id']; ?>">
					<input type="hidden" name="rowid" value="<?php echo $i; ?>">
					<?php
					echo'<input type="submit" value="Update" name="Update">';
					?>
					</form>
					<?php
					echo'</center></TD>';
				}
				else
				{
					echo'<TD><center>';
					echo $row["$year0"];
					echo'</center></TD>';
				}
				echo'</TR>';
				
			}
			
		}
	}
?>
</div>
<br>
<!-- close-->

<div class="container">
  <form action="fun_pro_fac.php" method="post" enctype="multipart/form-data" onsubmit="return(validate());">
  <div class="row">
      <div class="col-25">
        <label class="required" for="fname">Project Status</label>
      </div>
      <div class="col-25">
  <input type="radio"  name="status" value="ongoing" onClick="hideB()">OnGoing 
<input type="radio"  name="status" value="completed" onClick="hideA()">Completed
</div>
</div>
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
        <label class="required" for="fname">Title of the Project</label>
      </div>  
	<div class="col-50">
        <input type="text" id="titleofpro" name="titleofpro" required>
      </div>
    </div>	  
    
	
	 <div class="row">
      <div class="col-25">
        <label class="required" for="fname">Duration</label>
      </div>
      <div class="col-25">
        <input type="text" id="duration" name="duration" required>
      </div>
    </div>
	
	<div class="row">
      <div class="col-25">
        <label class="required" for="fname">Amount Sanctioned</label>
      </div>
	  <div class="col-25">
        <input type="text" id="amountsan" name="amountsan" required>
      </div>
    </div>
	  
	 <div class="row">
      <div class="col-25">
        <label class="required" for="fname">Funding Agency</label>
      </div>
      <div class="col-50">
        <input type="text" id="agency" name="agency" required>
      </div>
    </div>

    <div class="row">
      <div class="col-25">
        <label class="required" for="lname">Start Date of the Project</label>
      </div>
      <div class="col-25">
        <input type="date" id="startdate" name="startdate" required>
      </div>
    </div>
   
	<div class="row">
      <div class="col-25">
        <label class="required" for="lname">Name of the CO-PI </label>
      </div>
      <div class="col-50">
        <input type="text" id="copiname" name="copiname" required>
      </div>
    </div>
	
	<div class="row" >
      <div class="col-25">
        <label class="required" for="lname">Order Copy  (only PDF Format)</label>
		<label class="message" id="msg1" > </label>
      </div>
      <div class="col-75">
        <input type="file" id="file" name="file">
      </div>
    </div>
	
	<div style="visibility:hidden" id="B"> 
	<div class="row" >
      <div class="col-25">
        <label class="required" for="lname">Year of Completion</label>
      </div>
      <div class="col-50">
        <input type="month" id="year" name="year" >
     
    </div>
	 </div>
    <!--  <div class="col-25">
        <label class="required" for="lname">UC (only PDF Format)</label>
			<label class="message" id="msg2" > </label>
      </div>
      <div class="col-75">
        <input type="file" id="file1" name="file1">
      </div>-->
    </div>
	 <div class="row">
      <br>
    </div>
	
    <div class="row">
      <input type="submit" value="Submit" name="submit">
    </div>
  </form>
</div>
<script>
function ad(){
var allowedFiles = [".pdf"];
        var fileUpload = document.getElementById("file1");
        var lblError = document.getElementById("msg2");
        var regex = new RegExp("([a-zA-Z0-9\s_\\.\-:])+(" + allowedFiles.join('|') + ")$");
        if (!regex.test(fileUpload.value.toLowerCase())) {
            lblError.innerHTML = "Please upload files having extensions: <b>" + allowedFiles.join(', ') + "</b> only.";
            return false;
        }
        lblError.innerHTML = "";
        return true;

}
function ad1(){
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
<br>
</html>
<?php

if(isset($_POST["submit"])){
	
 $ayear=$_POST["ayear"];
 
 $titleofpro=$_POST["titleofpro"];
 $duration =$_POST["duration"];
 $amountsan =$_POST["amountsan"];
 $agency=$_POST["agency"];
 $startdate =$_POST["startdate"];
 $copiname =$_POST["copiname"];
  $status =$_POST["status"];
  if($status=='completed')
  {
	$year =$_POST["year"];
  }
  else
  {
	$year ="0";
  }
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
	$folder="../gallery/pro/".$aaa."/";
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
/*	if(empty($_FILES['file1']['name']))
	{*/
		$final_file1 =0;
/*	}
	else
	{
	$file1 = $_FILES['file1']['name'];
    $file_loc1 = $_FILES['file1']['tmp_name'];
	$file_size1 = $_FILES['file1']['size'];
	$file_type1 = $_FILES['file1']['type'];
	$folder1="../gallery/pro/".$aaa."/";
	// new file size in KB
	//$new_size1 = $file_size1/1024;  
	// new file size in KB	
	// make file name in lower case
	$file1=rand(1000,100000)."-".$file1;
	$new_file_name1 = strtolower($file1);;
	// make file name in lower case	
	$final_file1=str_replace(' ','-',$new_file_name1);
	$move1=move_uploaded_file($file_loc1,$folder1.$final_file1);
	}*/
 $order =$final_file;
 $uc =$final_file1;

		
		$sql6 = "INSERT into `$aaa` (sid,ayear,titleofpro1,duration1,amountsan1,agency1,startdate1,copiname1,year1,order1,uc1,funkey) VALUES ('$sid','$ayear','$titleofpro','$duration','$amountsan','$agency','$startdate','$copiname','$year','$order','$uc',1)";	
		if(mysqli_query($con,$sql6))
		{
			
			echo '<script language="javascript">alert("Funded Project Details Inserted Successfully");</script>';
			echo '<script type="text/javascript">window.location.href = "fun_pro_fac.php";</script>';
		}else {
    echo "Error: " . $sql6 . "<br>" . $con->error;
}
		
	
}

?>