<?php
session_start();
include("../../conn/config.php");

?>
<html>



<style>
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
<?php
$sid=$_SESSION['sid'];
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac";
$sql1="SELECT * FROM `$aaa` WHERE sid = '$sid'";
	$result = $con->query($sql1);
	if ($result->num_rows > 0) 
	{		

	while($row = $result->fetch_assoc()) 
		{
				$today = date("y-m-d");
				$doj = $row["doj"];
				$diff = abs(strtotime($doj) - strtotime($today));	
				$years = floor($diff / (365*60*60*24));
				$months = floor(($diff - $years * 365*60*60*24) / (30*60*60*24));
				$days = floor(($diff - $years * 365*60*60*24 - $months*30*60*60*24)/ (60*60*24));
		}
	}
				?>
				
		<div class="container">
 <nav class="navbar navbar-inverse navbar-fixed-top">

<ul>
 <li><a  class="active"  href="exp_in_fac.php" target= "frame1">Inhouse</a></li>
   <li><a href="exp_ot_fac.php" target= "frame1" >Other College</a></li>
  <li><a href="exp_pol_fac.php" target= "frame1">Polytechnic</a></li>
  <li><a href="exp_sc_fac.php" target= "frame1">Schools</a></li>
   <li><a href="exp_ind_fac.php" target= "frame1">Industry</a></li>  
   <li><a href="exp_oth_fac.php" target= "frame1">Others</a></li>     
</ul>
</nav>
<br><br>
<br>
<br>
		

 
    
	 <div class="row">
      <div class="col-25">
        <label for="fname"><b>Date of Joining</b></label>
      </div>  
	<div class="col-75">
	<?php $doj=Date("d-m-Y",strtotime($doj)); ?>
         <label for="fname"><?php echo $doj;?></label>
      </div>
    </div>	  
    
	
	 <div class="row">
      <div class="col-25">
        <label for="fname"><b>Total Experience</b></label>
      </div>
      <div class="col-75">
        <label for="fname"><?php printf("%d years, %d months, %d days\n", $years, $months, $days);?></label>
      </div>
	  
    </div>
	 <div class="row">
      <div class="col-25">
        <label for="subject">Appointment Order</label>
      </div>
       
	   <div class="col-75">
	   <?php
	    $sid=$_SESSION['sid'];
 $deptid=$_SESSION['deptid'];
 $aaa=$deptid."_fac";
 $sq="SELECT * FROM `$aaa` WHERE sid = '$sid'";
	$resul = $con->query($sq);
	while($ro = $resul->fetch_assoc()) {
	if ($ro['app_order'] == NULL) {
		
	   ?>
      <form action="app.php" method="post">
					<button class="but" type="submit" name="upload"/>Upload</button>
				</form>
	<?php }else{ 

	?>
				<a href="../../gallery/aadhar/<?php echo $aaa; ?>/<?php echo $ro['app_order']; ?>" target="_blank">View</a>
<?php } }?>
      </div>
    </div>
	
	
	
	 <div class="row">
      <br>
    </div>
	
  
 </div>
</html>