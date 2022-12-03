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
  <li><a  href="bk_fac.php" target= "frame1" >BOOK</a></li> 
  <li><a href="jrnl_fac.php" target= "frame1">JOURNAL</a></li>
  <li><a href="cnf_fac.php" target= "frame1">CONFERENCE</a></li>
   <li><a class="active"  href="google_fac.php" target= "frame1">Google Scholar Link</a></li>
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
			echo'<TH>google link </TH>';	
			echo'</TR>';
		while($row = $result->fetch_assoc()) 
		{
			
			
				
				
				echo'<TD><center>';
				echo $row["gl"];
				echo'</center></TD>';
				echo'</TR>';
        
		
			
		}
	}
?>
</div>
<br>
<!-- close-->


<div class="container">
<form action="google_fac.php" method="post" >
</div>
</select>
      </div>
    </div>
	 <div class="row">
      <div class="col-25">
        <label for="fname" class="required">Google Link</label>
      </div>  
	<div class="col-50">
        <input type="text" id="gl" name="gl" required>
      </div>
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
	

 $gl=$_POST["gl"];


 $sid=$_SESSION['sid'];
 $deptid=$_SESSION['deptid'];
 $aaa=$deptid."_fac_bkjrn";
 
 
	  
	  
		$sql6 = "INSERT into `$aaa` (sid,gl,glkey) VALUES ('$sid','$gl',1)";	
		if(mysqli_query($con,$sql6))
		{
			
			echo '<script language="javascript">alert("Your google link Inserted Successfully");</script>';
			echo '<script type="text/javascript">window.location.href = "google_fac.php";</script>';
		}
	  	
	
}

?>