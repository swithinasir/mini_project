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
.message{color:#FF0000;
font-size: small;
font-weight: bold; 
white-space: pre;
}
</style>
 <nav class="navbar navbar-inverse navbar-fixed-top">

<ul>
  <li><a href="bk_fac.php" target= "frame1" >BOOK</a></li> 
  <li><a class="active"  href="jrnl_fac.php" target= "frame1">JOURNAL</a></li>
  <li><a href="cnf_fac.php" target= "frame1">CONFERENCE</a></li>
  <li><a href="google_fac.php" target= "frame1">Google Scholar Link</a></li>
</ul>
</nav>
<br>
<script>
function validate()
{
	
	var valid = true;
	valid = valid && ad();
	 return valid;
	
}
 $('form').submit(validate);
</script>
<br>
<br>
<br>

<!-- view-->
<div class="container">
<?php
$sid=$_SESSION['sid'];
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac_bkjrn";
$sql1="SELECT * FROM `$aaa` WHERE sid = '$sid'";
	$result = $con->query($sql1);
	if ($result->num_rows > 0) 
	{		
echo'<br>';
			echo'<div class="row">';
			
			echo'<TABLE id="dataTable" width="100%" border="1">';
			echo'<TR>';
			echo'<TH>Academic Year</TH>';
			echo'<TH>Title of the Paper</TH>';
			echo'<TH>Name of the Journal</TH>';
			echo'<TH>Volume</TH>';
			echo'<TH>Issue</TH>';
			echo'<TH>ISSN/ISBN No </TH>';
			echo'<TH>Category (SCI / SCOPUS / WOS / UGC)</TH>';
			echo'<TH>Link </TH>';
			echo'<TH>Citation Index </TH>';
			echo'<TH>Impact Factor </TH>';
			echo'</TR>';
		while($row = $result->fetch_assoc()) 
		{
			
			for( $i=1; $i<=$row["jrnkey"];$i++)
			{
				$jrnname0="jrnname".$i;
				$jrnvol0="jrnvol".$i;
				$jrnissue0="jrnissue".$i;
				$jrnissn0="jrnissn".$i;
				$jrncategory0="jrncategory".$i;
				$jrnlink0="jrnlink".$i;
				$jrncit0="jrncit".$i;
				$jrnimpact0="jrnimpact".$i;				
				$jrntitle0="jrntitle".$i;
				echo'<TR>';
				echo'<TD><center>';
				echo $row["ayear"];
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row["$jrntitle0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$jrnname0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$jrnvol0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$jrnissue0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$jrnissn0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$jrncategory0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$jrnlink0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$jrncit0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$jrnimpact0"];
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
  <form action="jrnl_fac.php" method="post" enctype="multipart/form-data" onsubmit="return(validate());">
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
        <label for="jrntitle" class="required">Title of the Paper</label>
      </div>
	<div class="col-50">
        <input type="text" id="jrntitle" name="jrntitle" required>
      </div>
      </div>
	 <div class="row">
      <div class="col-25">
        <label for="fname" class="required">Name of the Journal</label>
      </div>
      <div class="col-50">
        <input type="text" id="jrnname" name="jrnname" required>
      </div>
	  
    </div>
	 <div class="row">
      <div class="col-25">
        <label for="fname" class="required">Volume</label>
      </div>
      <div class="col-50">
        <input type="text" id="jrnvol" name="jrnvol" required>
      </div>
    </div>
	
	<div class="row">
      <div class="col-25">
        <label for="fname" class="required">Issue</label>
      </div>
	  <div class="col-50">
        <input type="text" id="jrnissue" name="jrnissue" required>
      </div>
    </div>
	  
	 <div class="row">
      <div class="col-25">
        <label for="fname" class="required">ISSN/ISBN No</label>
      </div>
      <div class="col-50">
        <input type="text" id="jrnissn" name="jrnissn" required>
      </div>
    </div>
	
    <div class="row">
      <div class="col-25">
        <label for="lname" class="required">Category (SCI / SCOPUS / WOS / UGC / Others)</label>
		
      </div>
      <div class="col-50">
        <input type="text" id="jrncategory" name="jrncategory"required>
      </div>
    </div>
   
	<div class="row">
      <div class="col-25">
        <label for="lname" class="required">Link</label>
      </div>
      <div class="col-75">
        <input type="text" id="jrnlink" name="jrnlink" required>
      </div>
    </div>
	
    <div class="row">
      <div class="col-25">
        <label for="fname" class="required">Citation Index</label>
      </div>
	  <div class="col-50">
        <input type="text" id="jrncit" name="jrncit" required>
      </div>
    </div>
    
	<div class="row">
      <div class="col-25">
        <label for="fname" class="required">Impact Factor</label>
      </div>
	  <div class="col-75">
        <input type="text" id="jrnimpact" name="jrnimpact" required>
      </div>
    </div>
	
	<div class="row">
      <div class="col-25">
        <label for="lname" class="required">Journal Paper (only PDF Format)</label>
			<label class="message" id="msg1" > </label>
      </div>
      <div class="col-75">
        <input type="file" id="file1" name="file1">
      </div>
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
 $jrntitle=$_POST["jrntitle"];	
 $ayear=$_POST["ayear"];
 $jrnname=$_POST["jrnname"];
 $jrnvol =$_POST["jrnvol"];
 $jrnissue =$_POST["jrnissue"];
 $jrnissn =$_POST["jrnissn"];
 $jrncategory=strtolower($_POST["jrncategory"]);
 $jrnlink =$_POST["jrnlink"];
 $jrncit=$_POST["jrncit"];
 $jrnimpact =$_POST["jrnimpact"];
 
 
 $sid=$_SESSION['sid'];
 $deptid=$_SESSION['deptid'];
 $aaa=$deptid."_fac_bkjrn";
 
 
 $sql1="SELECT * FROM dept WHERE deptid = '$deptid'";
 $result = $con->query($sql1);
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$tablekey=$row["jrnlkey"];
		
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
	$new_size1 = $file_size1/1024;  
	// new file size in KB	
	// make file name in lower case
	$file1=rand(1000,100000)."-".$file1;
	$new_file_name1 = strtolower($file1);;
	// make file name in lower case	
	$final_file1=str_replace(' ','-',$new_file_name1);
	$move1=move_uploaded_file($file_loc1,$folder1.$final_file1);
	}
 $jrnpdf =$final_file1;
 
	  
	  
		$sql6 = "INSERT into `$aaa` (sid,ayear,jrntitle1,jrnname1,jrnvol1,jrnissue1,jrnissn1,jrncategory1,jrnlink1,jrncit1,jrnimpact1,jrnpdf1,jrnkey) VALUES ('$sid','$ayear','$jrntitle','$jrnname','$jrnvol','$jrnissue','$jrnissn','$jrncategory','$jrnlink','$jrncit','$jrnimpact','$jrnpdf',1)";	
		if(mysqli_query($con,$sql6))
		{
			
			echo '<script language="javascript">alert("Journal Details Inserted Successfully");</script>';
			echo '<script type="text/javascript">window.location.href = "jrnl_fac.php";</script>';
		}
	  	
	
}

?>