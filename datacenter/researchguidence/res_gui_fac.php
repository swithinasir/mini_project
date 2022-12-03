<?php
session_start();
include("../conn/config.php");
?>
<html>


<style>
* {
    box-sizing: border-box;
}

input[type=text],input[type=date], select, textarea {
    width: 100%;
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
input[type=button] {
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
input[type=button]:hover {
    background-color: #45a049;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
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
    .col-25, .col-75, input[type=submit], input[type=button] {
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
  <h1 align="center">RESEARCH GUIDANCE</h1>
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
$aaa=$deptid."_fac_resg";
$sql="SELECT * FROM `$aaa` WHERE sid = '$sid' ";
$result3 = $con->query($sql);
$sql1="SELECT sid, uname, supid FROM `$aaa` WHERE sid = '$sid' GROUP BY supid ";
$result = $con->query($sql1);
$all_suid=array();
	if ($result3->num_rows > 0) 
	{		
		while($row = $result->fetch_assoc()) 
		{		 
			echo'<br>';
			echo'<div class="row">';
			echo '<div class="col-25"><b>University Name : </b>'.$row["uname"].'</div>';
			echo '<div class="col-25"><b>Supervisor ID : </b>'.$row["supid"].'</div>';
			$supid=$row["supid"];
			$sql2="SELECT * FROM `$aaa` WHERE sid = '$sid' AND supid = '$supid' ";
			$result2 = $con->query($sql2);
			$num=$result2->num_rows;
			echo '<div class="col-25"><b>Number of Scholars : </b>'.$num.'</div>';
			echo'<TABLE id="dataTable" width="100%" border="1">';
			echo'<TR>';
			echo'<TH>Register No.</TH>';
			echo'<TH>Name</TH>';
			echo'<TH>Year Of Registration</TH>';
			echo'<TH>Specialization</TH>';
			echo'<TH>Title of THESIS</TH>';			
			echo'<TH>Year of Complition</TH>';
			echo'</TR>';
			
			while($row2 = $result2->fetch_assoc()) 
			{
				
		
				echo'<TR>';
				echo'<TD><center>';
				echo $row2["reg"] ;
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row2["name"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row2["year"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row2["spec"];
				echo'</center></TD>';
				echo'<TD><center>'; 
				echo $row2["tit"];
				echo'</center></TD>';
				echo'<TD><center>'; 
				$cyear=$row2["cyear"];
				if($cyear=="ongoing")
				{	
				?>
				<form action="ures.php" method="post">
					<INPUT type="hidden" name="id" value="<?php echo $row2["id"] ?>" />	
					<button class="but" type="submit" name="upload"/>Update</button>
				</form>
				<?php
				}
				else
				{
					if($cyear=="discontinued")
					{
						echo "Discontinued";
					}
					else
					{
						echo $cyear;
					}
				}	
				echo'</center></TD>';
				echo'</TR>';
        
			}			
			if(isset($_POST["addsch"]))
			{
				
				?>
					<form action="res_gui_fac.php" method="post">
						<INPUT type="hidden" name="sid" value="<?php echo $row["sid"] ?>"/>
						<INPUT type="hidden" name="uname" value="<?php echo $row["uname"] ?>"/>
						<INPUT type="hidden" name="supid" value="<?php echo $row["supid"] ?>"/>
						<?php      
						echo'<TR>';
						echo'<TD><INPUT type="text" name="reg" Placeholder="Register NO."/></TD>';
						echo'<TD><INPUT type="text" name="name" Placeholder="Name"/></TD>';
						echo'<TD><INPUT type="text" name="year" Placeholder="Year of Registration"/></TD>';
						echo'<TD><INPUT type="text" name="spec" Placeholder="Specialization"/></TD>';
						echo'<TD><INPUT type="text" name="tit" Placeholder="Title of THESIS"/></TD>';
						echo'</TR>';
						echo'</table>';	
						?>
						<!--<div class="row">
							<div class="col-25"> </div>
							<div class="col-25"> </div>
							<div class="col-25"></div>-->
							<div class="col-25">
								<button type="submit" name="update"> Update </button>
							</div>
						</div>
					</form>
				<?php	      
			}
			else
			{
				?>
				<!--<div class="row">
					<div class="col-25"> </div>
					<div class="col-25">  </div>
					<div class="col-25"> </div>-->
					<div class="col-25">
					<form action="res_gui_fac.php" method="post">	 
						<button type="submit" name="addsch"> Add Scholars Details </button>	
					</form>
					</div>
				</div>
				<?php 
			echo'</table>';	
			} 
		?>	
			<div class="row">
				<div class="col-25"></div>
				<div class="col-25"></div>
				<div class="col-25"></div>
				<div class="col-25">
				<form action="res_gui_fac.php" method="post">	 
					<button type="submit" name="other"> Add Other University Details </button>	
				</form>		
				</div>
			</div>
			<?php
		}	
	}
	else
	{	
		if(isset($_POST["add"]))
		{
			$univ_name =$_POST['univ_name'];
			$supervisor_id =$_POST['supervisor_id'];
			$num_scholars =$_POST['num_scholars'];
			?>
			<form action="res_gui_fac.php" method="post">    
				<div class="row">
					<div class="col-25">
						<label for="fname">Name of the University</label>
					</div>  
					<div class="col-75">
						<input type="text" id="uname" name="uname" value="<?php echo $univ_name ?>">
					</div>
				</div>	  
				<div class="row">
					<div class="col-25">
						<label for="fname">Supervisor ID</label>
					</div>
					<div class="col-75">
						<input type="text" id="supid" name="supid" value="<?php echo $supervisor_id ?>" >
					</div>
				</div>	
				<div class="row">
					<div class="col-25">
						<label for="fname">No.of.Scholars</label>
					</div>
					<div class="col-25">
						<input type="text" id="numsch" name="numsch" value="<?php echo $num_scholars ?>" readonly>
					</div>	 
				</div>    
				<?php  
				echo'<br><TABLE id="dataTable" width="100%" border="1">';   
				for( $i=1; $i<=$num_scholars;$i++)
				{
					echo'<TR>';
					echo'<TD><INPUT type="text" name="reg'.$i.'" Placeholder="Register NO."/></TD>';
					echo'<TD><INPUT type="text" name="name'.$i.'" Placeholder="Name"/></TD>';
					echo'<TD><INPUT type="text" name="year'.$i.'" Placeholder="Year of Registration"/></TD>';
					echo'<TD><INPUT type="text" name="spec'.$i.'" Placeholder="Specialization"/></TD>';
					echo'<TD><INPUT type="text" name="tit'.$i.'" Placeholder="Title of THESIS"/></TD>';
					echo'</TR>';        
				}
				echo'</table>';  
				?>	
				<div id="wrapper"></div>	 
				<div class="row">
					<br>
				</div>	
				<div class="row">
					<input type="submit" value="Submit" name="submit">
				</div>
			</form>
			<?php
		}
		else
		{
		?>
			<form action="res_gui_fac.php" method="post">
				<div class="row">
					<div class="col-25">
						<label for="fname">Name of the University</label>
					</div>  
					<div class="col-75">
						<input type="text" id="univ_name" name="univ_name">
					</div>
				</div>	  
				<div class="row">
					<div class="col-25">
						<label for="fname">Supervisor ID</label>
					</div>
					<div class="col-75">
						<input type="text" id="supervisor_id" name="supervisor_id" >
					</div>
				</div>	
				<div class="row">
					<div class="col-25">
						<label for="fname">No.of.Scholars</label>
					</div>
					<div class="col-25">
						<input type="text" id="num_scholars" name="num_scholars" >
					</div>
					<div class="col-25"></div>
					<div class="col-25">
						<button type="submit" name="add"> Add Scholars Details</button>
					</div>
				</div>
				<div id="wrapper"></div>	 
				<div class="row">
					<br>
				</div>   
			</form>
		<?php
		}
	}
	?>
	<?php
	if(isset($_POST["other"]))
	{
	?>
			<form action="res_gui_fac.php" method="post">
				<div class="row">
					<div class="col-25">
						<label for="fname">Name of the University</label>
					</div>  
					<div class="col-75">
						<input type="text" id="univ_name" name="univ_name">
					</div>
				</div>	  
				<div class="row">
					<div class="col-25">
						<label for="fname">Supervisor ID</label>
					</div>
					<div class="col-75">
						<input type="text" id="supervisor_id" name="supervisor_id" >
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="fname">No.of.Scholars</label>
					</div>
					<div class="col-25">
						<input type="text" id="num_scholars" name="num_scholars" >
					</div>
					<div class="col-25"></div>
					<div class="col-25">
						<button type="submit" name="add1"> Add Scholars Details</button>
					</div>
				</div>
				<div id="wrapper"></div>
				<div class="row">
					<br>
				</div>
			</form>
		<?php
	}
	if(isset($_POST["add1"]))
		{
			$univ_name =$_POST['univ_name'];
			$supervisor_id =$_POST['supervisor_id'];
			$num_scholars =$_POST['num_scholars'];
			?>
			<form action="res_gui_fac.php" method="post">    
				<div class="row">
					<div class="col-25">
						<label for="fname">Name of the University</label>
					</div>  
					<div class="col-75">
						<input type="text" id="uname" name="uname" value="<?php echo $univ_name ?>">
					</div>
				</div>	  
				<div class="row">
					<div class="col-25">
						<label for="fname">Supervisor ID</label>
					</div>
					<div class="col-75">
						<input type="text" id="supid" name="supid" value="<?php echo $supervisor_id ?>" >
					</div>
				</div>	
				<div class="row">
					<div class="col-25">
						<label for="fname">No.of.Scholars</label>
					</div>
					<div class="col-25">
						<input type="text" id="numsch" name="numsch" value="<?php echo $num_scholars ?>" readonly>
					</div>	 
				</div>    
				<?php   
				echo'<br><TABLE id="dataTable" width="100%" border="1">';
				for( $i=1; $i<=$num_scholars;$i++)
				{
					echo'<TR>';
					echo'<TD><INPUT type="text" name="reg'.$i.'" Placeholder="Register NO."/></TD>';
					echo'<TD><INPUT type="text" name="name'.$i.'" Placeholder="Name"/></TD>';
					echo'<TD><INPUT type="text" name="year'.$i.'" Placeholder="Year of Registration"/></TD>';
					echo'<TD><INPUT type="text" name="spec'.$i.'" Placeholder="Specialization"/></TD>';
					echo'<TD><INPUT type="text" name="tit'.$i.'" Placeholder="Title of THESIS"/></TD>';
					echo'</TR>';
				}
				echo'</table>';
				?>
				<div id="wrapper"></div>
				<div class="row">
					<br>
				</div>	
				<div class="row">
					<input type="submit" value="Submit" name="submit">
				</div>
			</form>
			<?php
		}
  ?>
<div id="wrapper"></div>	 
<div class="row">
	<br>
</div>   
</div>
</html>
<?php

if(isset($_POST["submit"])){
	
 $uname=$_POST["uname"];
 $supid=$_POST["supid"];
 $numsch=$_POST["numsch"];
 
 
 $sid=$_SESSION['sid'];
 $deptid=$_SESSION['deptid'];
 $aaa=$deptid."_fac_resg";
 
 
		for( $i=1; $i<=$numsch;$i++)
    { 

$reg="reg".$i;
 $name="name".$i;
 $year="year".$i;
 $spec="spec".$i;
 $tit="tit".$i;
 
 $reg =$_POST["reg".$i];
 $name =$_POST["name".$i];
 $year =$_POST["year".$i];
 $spec=$_POST["spec".$i];
 $tit =$_POST["tit".$i];
		$sql6 = "INSERT into `$aaa` (sid,uname,supid,reg,name,year,spec,tit,cyear) VALUES ('$sid','$uname','$supid','$reg','$name','$year','$spec','$tit','ongoing')";	
		
				if(mysqli_query($con,$sql6))
				{
					
					echo '<script language="javascript">alert("Research Guidence Details Inserted Successfully");</script>';
					echo '<script type="text/javascript">window.location.href = "res_gui_fac.php";</script>';

				}
				else 
				{
					echo "Error1: " . $sql6 . "<br>" . $con->error;
				}
			
		
		
	}
		
}




	if(isset($_POST["update"])){
 $supid=$_POST["supid"];
 $uname=$_POST["uname"];
 
 $sid=$_SESSION['sid'];
 $deptid=$_SESSION['deptid'];
 $aaa=$deptid."_fac_resg";



 $reg =$_POST["reg"];
 $name =$_POST["name"];
 $year =$_POST["year"];
 $spec=$_POST["spec"];
 $tit =$_POST["tit"];

				$sql4 = "INSERT into `$aaa` (sid,uname,supid,reg,name,year,spec,tit,cyear) VALUES ('$sid','$uname','$supid','$reg','$name','$year','$spec','$tit','ongoing')";	

				if(mysqli_query($con,$sql4))
				{
					//header("Location: res_gui_fac.php");
					echo '<script language="javascript">alert("Research Guidence Details Inserted Successfully");</script>';
					echo '<script type="text/javascript">window.location.href = "res_gui_fac.php";</script>';
				}
				else 
				{
					echo "Error1: " . $sql4 . "<br>" . $conn->error;
				}
		
		
	}
		
		

	
?>