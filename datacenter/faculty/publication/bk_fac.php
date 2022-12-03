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

input[type=text],input[type=month],td, select, textarea {
   
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
  <li><a class="active"  href="bk_fac.php" target= "frame1" >BOOK</a></li> 
  <li><a href="jrnl_fac.php" target= "frame1">JOURNAL</a></li>
  <li><a href="cnf_fac.php" target= "frame1">CONFERENCE</a></li>
   <li><a href="google_fac.php" target= "frame1">Google Scholar Link</a></li>
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
			echo'<TH>Title of BOOK</TH>';
			echo'<TH>Title of The Chapter</TH>';
			echo'<TH>ISSN / ISBN NO</TH>';
			echo'<TH>Month/Year </TH>';
			echo'<TH>Name of the Publisher</TH>';
			echo'<TH>Type of the publication </TH>';	
			echo'</TR>';
		while($row = $result->fetch_assoc()) 
		{
			
			for( $i=1; $i<=$row["bkkey"];$i++)
			{
				$bk0="bk".$i;
				$bkcha0="bkcha".$i;
				$bkissn0="bkissn".$i;
				$bkmy0="bkmy".$i;
				$bkpub0="bkpub".$i;
				$bktype0="bktype".$i;
				
		
				echo'<TR>';
				echo'<TD><center>';
				echo $row["ayear"];
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row["$bk0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$bkcha0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$bkissn0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$bkmy0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$bkpub0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$bktype0"];
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
  <form action="bk_fac.php" method="post" enctype="multipart/form-data" onsubmit="return(validate());>
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
        <label for="fname" class="required">Title of the Book</label>
      </div>  
	<div class="col-50">
        <input type="text" id="bk" name="bk" required>
      </div>
    </div>	  
    
	
	 <div class="row">
      <div class="col-25">
        <label for="fname" class="required">Title of the Chapter</label>
      </div>
      <div class="col-50">
        <input type="text" id="bkcha" name="bkcha" required>
      </div>
    </div>
	
	<div class="row">
      <div class="col-25">
        <label for="fname" class="required">ISSN / ISBN NO.</label>
      </div>
	  <div class="col-50">
        <input type="text" id="bkissn" name="bkissn" required>
      </div>
    </div>
	  
	 <div class="row">
      <div class="col-25">
        <label for="fname" class="required">Month/Year</label>
      </div>
      <div class="col-25">
        <input type="month" id="bkmy" name="bkmy" required>
      </div>
    </div>

    <div class="row">
      <div class="col-25">
        <label for="lname" class="required">Name of the Publisher</label>
      </div>
      <div class="col-75">
        <input type="text" id="bkpub" name="bkpub" required>
      </div>
    </div>
   
	<div class="row">
      <div class="col-25">
        <label for="lname" class="required">Type of the publication</label>
      </div>
      <div class="col-50">
        <input type="text" id="bktype" name="bktype" required>
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
 $bk=$_POST["bk"];
 $bkcha =$_POST["bkcha"];
 $bkissn =$_POST["bkissn"];
 $bkmy =$_POST["bkmy"];
 $bkpub=$_POST["bkpub"];
 $bktype =$_POST["bktype"];
 
 
 $sid=$_SESSION['sid'];
 $deptid=$_SESSION['deptid'];
 $aaa=$deptid."_fac_bkjrn";
 
 
	  
	  
		$sql6 = "INSERT into `$aaa` (sid,ayear,bk1,bkcha1,bkissn1,bkmy1,bkpub1,bktype1,bkkey) VALUES ('$sid','$ayear','$bk','$bkcha','$bkissn','$bkmy','$bkpub','$bktype',1)";	
		if(mysqli_query($con,$sql6))
		{
			
			echo '<script language="javascript">alert("Book Publishied  Details Inserted Successfully");</script>';
			echo '<script type="text/javascript">window.location.href = "bk_fac.php";</script>';
		}
	  	
	
}

?>