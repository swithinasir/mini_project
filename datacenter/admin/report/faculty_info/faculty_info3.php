<?php
session_start();
$deptid=$_SESSION['deptid'];
include("../../../conn/config.php");
?>
<html>


<style>
 .required:after { content:" *";color: #e32; }
* {
    box-sizing: border-box;
}

input[type=text],[type=date],[type=email], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    background-color: #4CAF25;
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

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}

.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-25 {
    float: left;
    width: 25%;
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
    .col-25, .col-25, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}
.message{color:#FF0000;
font-size: small;
font-weight: bold; 
white-space: pre;
}
.avatar {
  float: right;
  width: 60px;
  height: 60px;
  border-radius: 50%;
  

  position: -webkit-sticky;
  position: sticky;
  top: 0;
}
</style>
<style>
    .feedback {
  background-color : #31B0D5;
  color: white;
  padding: 10px 20px;
  border-radius: 4px;
  border-color: #46b8da;
}

#mybutton {
  position: fixed;
  bottom: 5px;
  right: 10px;
}
</style>

<!--<img width="100%" src="../../images/header.jpg">-->
<div class="container">
<div id="mybutton">
<form action="faculty_info1.php" method="post">
					<input type="hidden" name="sid" value="<?php echo $_POST['sid']; ?>">
					<input type="hidden" name="dept" value="<?php echo $_POST['dept']; ?>">
					<input type="hidden" name="cat" value="<?php echo $_POST['cat']; ?>">
<button class="feedback">BACK</button>
</form>
</div>
 <form role="form" action="#" method="post" enctype="multipart/form-data" onsubmit="return(fileValidate());" >
   <?php
   $sid =$_POST['sid'];
	
   $deptid=$_POST['dept'];	
    $aaa=$deptid."_fac";
	$sql="SELECT * FROM `$aaa` WHERE sid = '$sid' ";
	$result = $con->query($sql);
	$row = $result->fetch_assoc();	
	$uploadpic=$row["uploadpic"];
	$src="../../../gallery/photo/".$aaa."/".$uploadpic;?>
	<img src="<?php echo $src ; ?>" alt="Avatar" class="avatar">
    <div class="row">
      <div class="col-25">
        <label for="fname">Name</label>
      </div>
      <div class="col-25">
       <label><?php echo $row["name"];?></label>
      </div>
	</div>
	 
	<div class="row">
      <div class="col-25">
        <label for="fname">Designation</label>
      </div>
      <div class="col-25">
       <label><?php echo $row["designation"];?></label>
      </div>
	</div>	 
   
	<div class="row">
      <div class="col-25">
        <label for="fname">DOB</label>
      </div>
      <div class="col-25">
	  <?php $dob=Date("d-m-Y",strtotime($row["dob"])); ?>
       <label><?php echo $dob; ?></label>
      </div>
	</div>
	
	<div class="row">
      <div class="col-25">
        <label for="fname">Age</label>
      </div>
      <div class="col-25">
	  <?php
		$dob=$row["dob"] ;
		$from = new DateTime($dob);
		$to   = new DateTime('today');
		?>					
       <label><?php echo $from->diff($to)->y;?></label>
      </div>
	</div>
	
	<div class="row">
      <div class="col-25">
        <label for="fname">DOJ</label>
      </div>
      <div class="col-25">
	  <?php $doj=Date("d-m-Y",strtotime($row["doj"]));?>
       <label><?php echo $doj; ?></label>
      </div>
	</div>
	<?php	
				$today = date("y-m-d");
				$doj = $row["doj"];
				$diff = abs(strtotime($doj) - strtotime($today));	
				$years = floor($diff / (365*60*60*24));
				$months = floor(($diff - $years * 365*60*60*24) / (30*60*60*24));
				$days = floor(($diff - $years * 365*60*60*24 - $months*30*60*60*24)/ (60*60*24));
		
	?>
	<div class="row">
      <div class="col-25">
        <label for="fname">Total Year of Expeerience</label>
      </div>
      <div class="col-25">
       <label><?php printf("%d years, %d months, %d days\n", $years, $months, $days);?></label>
      </div>
	</div>
	
	<div class="row">
      <div class="col-25">
        <label for="fname">MObile No.</label>
      </div>
      <div class="col-25">
       <label><?php echo $row["mob1"];?></label>
      </div>
	</div>
	
	<div class="row">
      <div class="col-25">
        <label for="fname">Mail ID.</label>
      </div>
      <div class="col-25">
       <label><?php echo $row["email"];?></label>
      </div>
	</div>
	
	<div class="row">
      <div class="col-25">
        <label for="fname">Aadhar</label>
      </div>
      <div class="col-25">
       <label><?php echo $row["aadharno"];?></label>
      </div>
	</div>
	
	<div class="row">
      <div class="col-25">
        <label for="fname">Community</label>
      </div>
      <div class="col-25">
       <label><?php echo $row["comunity"];?></label>
      </div>
	</div>
	<!--Qualification-->
	<?php
	$aaa1=$deptid."_fac_edu";
	$sql1="SELECT * FROM `$aaa1` WHERE sid = '$sid' ";
	$result1 = $con->query($sql1);
	if($result1->num_rows > 0) 
	{
		$row1 = $result1->fetch_assoc();
	?>
	<div class="row">
      <div class="col-25">
        <label for="fname">Qualification:</label>
      </div>
	</div>
	
	<TABLE id="dataTable" width="100%" border="1">
				<TR>
					<TH>Name of the Qualification</TH>
					<TH>School / Institute</TH>
					<TH>Year of Completion</TH>
					<TH>Percentage</TH>
					<TH>Cirtificate</TH>
				</TR>
				<?php
				if($row1["skey"]=="1")
				{
				?>
				<TR>
					<TD>10th</TD>
					<TD><?php echo $row1["sname"];?></TD>
					<TD><?php echo $row1["syear"];?></TD>
					<TD><?php echo $row1["spercentage"];?></TD>
					<TD>
					<a href="../../../gallery/10thcer/<?php echo $aaa1; ?>/<?php echo $row1['scertificate']; ?>" target="_blank">View</a>
					</TD>
					
				</TR>
				<?php } ?>
				<?php
				if($row1["s2key"]==1)
				{
				?>
				<TR>
					<TD>12th</TD>
					<TD><?php echo $row1["s2name"];?></TD>
					<TD><?php echo $row1["s2year"];?></TD>
					<TD><?php echo $row1["s2percentage"];?></TD>
					<TD>
						<a href="../../../gallery/12thcer/<?php echo $aaa1; ?>/<?php echo $row1['s2certificate']; ?>" target="_blank">View</a>
					</TD>
				</TR>
				
				
				<?php } ?>
				<?php
				if($row1["dkey"]==1)
				{
				?>
				<TR>
					<TD>Diploma</TD>
					<TD><?php echo $row1["dname"];?></TD>
					<TD><?php echo $row1["dyear"];?></TD>
					<TD><?php echo $row1["dpercentage"];?></TD>
					
					<TD>
						<a href="../../gallery/dipcer/<?php echo $aaa1; ?>/<?php echo $row1['dcertificate']; ?>" target="_blank">View</a>					</TD>
				</TR>
				<?php } ?><?php
				if($row1["d1key"]==1)
				{
				?>
				<TR>
					<TD>Diploma</TD>
					<TD><?php echo $row1["d1name"];?></TD>
					<TD><?php echo $row1["d1year"];?></TD>
					<TD><?php echo $row1["d1percentage"];?></TD>
					
					<TD>
						<a href="../../gallery/dipcer/<?php echo $aaa1; ?>/<?php echo $row1['d1certificate']; ?>" target="_blank">View</a>
					</TD>
				</TR>
				<?php } ?><?php
				if($row1["d2key"]==1)
				{
				?>
				<TR>
					<TD>Diploma</TD>
					<TD><?php echo $row1["d2name"];?></TD>
					<TD><?php echo $row1["d2year"];?></TD>
					<TD><?php echo $row1["d2percentage"];?></TD>
					
					<TD>
						<a href="../../gallery/dipcer/<?php echo $aaa1; ?>/<?php echo $row1['d2certificate']; ?>" target="_blank">View</a>
					</TD>
				</TR>
				<?php } ?><?php
				if($row1["ukey"]==1)
				{
				?>
				<TR>
					<TD>UG</TD>
					<TD><?php echo $row1["uname"];?></TD>
					<TD><?php echo $row1["uyear"];?></TD>
					<TD><?php echo $row1["upercentage"];?></TD>
					
					<TD>
						<a href="../../../gallery/ugcer/<?php echo $aaa1; ?>/<?php echo $row1['ucertificate']; ?>" target="_blank">View</a>
					</TD>
				</TR>
				<?php } ?><?php
				if($row1["u1key"]==1)
				{
				?>
				<TR>
					<TD>UG</TD>
					<TD><?php echo $row1["u1name"];?></TD>
					<TD><?php echo $row1["u1year"];?></TD>
					<TD><?php echo $row1["u1percentage"];?></TD>
					
						<TD>
						<a href="../../../gallery/ugcer/<?php echo $aaa1; ?>/<?php echo $row1['u1certificate']; ?>" target="_blank">View</a>
					</TD>
				</TR>
				<?php } ?><?php
				if($row1["u2key"]==1)
				{
				?>
				<TR>
					<TD>UG</TD>
					<TD><?php echo $row1["u2name"];?></TD>
					<TD><?php echo $row1["u2year"];?></TD>
					<TD><?php echo $row1["u2percentage"];?></TD>
					
						<TD>
						<a href="../../../gallery/ugcer/<?php echo $aaa1; ?>/<?php echo $row1['u2certificate']; ?>" target="_blank">View</a>
					</TD>
				</TR>
				<?php } ?><?php
				if($row1["pkey"]==1)
				{
				?>
				<TR>
					<TD>PG</TD>
					<TD><?php echo $row1["pname"];?></TD>
					<TD><?php echo $row1["pyear"];?></TD>
					<TD><?php echo $row1["ppercentage"];?></TD>
					
					<TD>
						 <a href="../../../gallery/pgcer/<?php echo $aaa1; ?>/<?php echo $row1['pcertificate']; ?>" target="_blank">View</a>
					</TD>
				</TR>
				<?php } ?><?php
				if($row1["p1key"]==1)
				{
				?>
				<TR>
					<TD>PG</TD>
					<TD><?php echo $row1["p1name"];?></TD>
					<TD><?php echo $row1["p1year"];?></TD>
					<TD><?php echo $row1["p1percentage"];?></TD>
					
					<TD>
						 <a href="../../../gallery/pgcer/<?php echo $aaa1; ?>/<?php echo $row1['p1certificate']; ?>" target="_blank">View</a>
					</TD>
				</TR>
				<?php } ?><?php
				if($row1["p2key"]==1)
				{
				?>
				<TR>
					<TD>PG</TD>
					<TD><?php echo $row1["p2name"];?></TD>
					<TD><?php echo $row1["p2year"];?></TD>
					<TD><?php echo $row1["p2percentage"];?></TD>
					
					<TD>
						 <a href="../../../gallery/pgcer/<?php echo $aaa1; ?>/<?php echo $row1['p1certificate']; ?>" target="_blank">View</a>
					</TD>
				</TR>
				<?php } ?><?php
				if($row1["mkey"]==1)
				{
				?>
				<TR>
					<TD>Mphil</TD>
					<TD><?php echo $row1["mname"];?></TD>
					<TD><?php echo $row1["myear"];?></TD>
					<TD><?php echo $row1["mpercentage"];?></TD>
					<TD>
					 <a href="../../../gallery/mphcer/<?php echo $aaa1; ?>/<?php echo $row1['mcertificate']; ?>" target="_blank">View</a>
					</TD>
				</TR>
				<?php } ?><?php
				if($row1["phkey"]==1)
				{
				?>
				<TR>
					<TD>Ph.D</TD>
					<TD><?php echo $row1["phname"];?></TD>
					<TD><?php echo $row1["phyear"];?></TD>
					<TD>-</TD>
					<TD> 
       <a href="../../../gallery/phdcer/<?php echo $aaa1; ?>/<?php echo $row1['phcertificate']; ?>" target="_blank">View</a>
			</TD>
				</TR>
				<?php } ?><?php
				if($row1["ph1key"]==1)
				{
				?>
				<TR>
					<TD>Ph.D</TD>
					<TD><?php echo $row1["ph1name"];?></TD>
					<TD><?php echo $row1["ph1year"];?></TD>
					<TD>-</TD>
					<TD> 
       <a href="../../../gallery/phdcer/<?php echo $aaa1; ?>/<?php echo $row1['ph1certificate']; ?>" target="_blank">View</a>
			</TD>
				</TR>
				<?php } ?><?php
				if($row1["ph2key"]==1)
				{
				?>
				<TR>
					<TD>Ph.D</TD>
					<TD><?php echo $row1["ph2name"];?></TD>
					<TD><?php echo $row1["ph2year"];?></TD>
					<TD>-</TD><TD> 
       <a href="../../../gallery/phdcer/<?php echo $aaa1; ?>/<?php echo $row1['ph2certificate']; ?>" target="_blank">View</a>
			</TD>
				</TR>
				<?php } ?>
				
	</TABLE>
	<?php
	}
	?>
	<!--Research Project-->
	<?php
	$aaa2=$deptid."_fac_funpat";
	$sql2="SELECT * FROM `$aaa2` WHERE sid = '$sid' AND titleofpro1 IS NOT NULL ORDER BY ayear DESC";
	$result2 = $con->query($sql2);
	if($result2->num_rows > 0) 
	{
		
		
	?>
	<div class="row">
      <div class="col-25">
        <label for="fname">Research Project:</label>
      </div>
	</div>
	
	<TABLE id="dataTable" width="100%" border="1">
			<?php	
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
			
				while($row2 = $result2->fetch_assoc()) 
		{
			
			for( $i=1; $i<=$row2["funkey"];$i++)
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
				echo $row2["ayear"];
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row2["$titleofpro0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row2["$duration0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row2["$amountsan0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row2["$agency0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo Date("d-m-Y",strtotime($row2["$startdate0"]));
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row2["$copiname0"];
				echo'</center></TD>';
				if($row2["$year0"]==0)
				{
					echo'<TD><center>';
					echo 'OnGoing';
					echo'</center></TD>';
					
				}
				else
				{
					echo'<TD><center>';
					echo $row2["$year0"];
					echo'</center></TD>';
				}
				echo'</TR>';
				
			}
			
		} ?>
				
	</TABLE>
	<?php
	}
	?>
	<!--Book Publication-->
	<?php
	$aaa3=$deptid."_fac_bkjrn";
	$sql3="SELECT * FROM `$aaa3` WHERE sid = '$sid' AND bk1 IS NOT NULL ORDER BY ayear DESC";
	$result3 = $con->query($sql3);
	if($result3->num_rows > 0)
	{
		
	?>
	<div class="row">
      <div class="col-25">
        <label for="fname">Book Publication:</label>
      </div>
	</div>
	
	<TABLE id="dataTable" width="100%" border="1">
			<?php	
				echo'<TR>';
			echo'<TH>Academic Year</TH>';
			echo'<TH>Title of BOOK</TH>';
			echo'<TH>Title of The Chapter</TH>';
			echo'<TH>ISSN / ISBN NO</TH>';
			echo'<TH>Month/Year </TH>';
			echo'<TH>Name of the Publisher</TH>';
			echo'<TH>Type of the publication </TH>';	
			echo'</TR>';
			
				while($row3 = $result3->fetch_assoc()) 
		{
			
			for( $i=1; $i<=$row3["bkkey"];$i++)
			{
				$bk0="bk".$i;
				$bkcha0="bkcha".$i;
				$bkissn0="bkissn".$i;
				$bkmy0="bkmy".$i;
				$bkpub0="bkpub".$i;
				$bktype0="bktype".$i;
				
		
				echo'<TR>';
				echo'<TD><center>';
				echo $row3["ayear"];
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row3["$bk0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row3["$bkcha0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row3["$bkissn0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row3["$bkmy0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row3["$bkpub0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row3["$bktype0"];
				echo'</center></TD>';
				echo'</TR>';
        
			}
			
		} ?>
				
	</TABLE>
	<?php
	}
	?>
	<!--Journal Publication-->
	<?php
	$aaa4=$deptid."_fac_bkjrn";
	$sql4="SELECT * FROM `$aaa4` WHERE sid = '$sid' AND jrnname1 IS NOT NULL ORDER BY ayear DESC";
	$result4 = $con->query($sql4);
	if($result4->num_rows > 0) 
	{
		
	?>
	<div class="row">
      <div class="col-25">
        <label for="fname">Journal Publication:</label>
      </div>
	</div>
	
	<TABLE id="dataTable" width="100%" border="1">
			<?php	
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
			
		while($row4 = $result4->fetch_assoc()) 
		{
			
			for( $i=1; $i<=$row4["jrnkey"];$i++)
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
				echo $row4["ayear"];
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row4["$jrntitle0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row4["$jrnname0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row4["$jrnvol0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row4["$jrnissue0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row4["$jrnissn0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row4["$jrncategory0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row4["$jrnlink0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row4["$jrncit0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row4["$jrnimpact0"];
				echo'</center></TD>';
				
				echo'</TR>';
        
			}
			
		} ?>
				
	</TABLE>
	<?php
	}
	?>
	<!--Conference-->
	<?php
	$aaa5=$deptid."_fac_glc";
	$sql5="SELECT * FROM `$aaa5` WHERE sid = '$sid' AND conname1 IS NOT NULL ORDER BY ayear DESC";
	$result5 = $con->query($sql5);
	if($result5->num_rows > 0) 
	{
		
	?>
	<div class="row">
      <div class="col-25">
        <label for="fname">Conference:</label>
      </div>
	</div>
	
	<TABLE id="dataTable" width="100%" border="1">
			<?php	
				echo'<TR>';
			echo'<TH>Academic Year</TH>';
			echo'<TH>Name of the Program</TH>';
			echo'<TH>Title of the Program</TH>';
			echo'<TH>Organised By</TH>';
			echo'<TH>No.Of.Days</TH>';
			echo'<TH>From </TH>';
			echo'<TH>To </TH>';
			echo'<TH>Date </TH>';
			echo'<TH>Level Of The Program</TH>';
			echo'</TR>';
			
		while($row5 = $result5->fetch_assoc()) 
		{
			
			for( $i=1; $i<=$row5["conkey"];$i++)
			{
				$conname0="conname".$i;
				$contitle0="contitle".$i;
				$conorg0="conorg".$i;
				$condays0="condays".$i;
				$confrom0="confrom".$i;
				$conto0="conto".$i;
				$condate0="condate".$i;
				$conlevel0="conlevel".$i;
				$days = $row5["$condays0"];

		
				echo'<TR>';
				echo'<TD><center>';
				echo $row5["ayear"];
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row5["$conname0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row5["$contitle0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row5["$conorg0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row5["$condays0"];
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo "--";
				}
				else
				{
				echo Date("d-m-Y",strtotime($row5["$confrom0"]));
				}
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo "--";
				}
				else
				{
				echo Date("d-m-Y",strtotime($row5["$conto0"]));
				}
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo Date("d-m-Y",strtotime($row5["$condate0"]));
				}
				else
				{
				echo "--";
				}
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row5["$conlevel0"];
				echo'</center></TD>';
				
				echo'</TR>';
        
			}
			
		} ?>
				
	</TABLE>
	<?php
	}
	?>
	<!--Attended-->
	<?php
	$aaa6=$deptid."_fac_attorg";
	$sql6="SELECT * FROM `$aaa6` WHERE sid = '$sid' AND attcategory1 IS NOT NULL ORDER BY ayear DESC";
	$result6 = $con->query($sql6);
	if($result6->num_rows > 0) 
	{
		
	?>
	<div class="row">
      <div class="col-25">
        <label for="fname">Program Attended:</label>
      </div>
	</div>
	
	<TABLE id="dataTable" width="100%" border="1">
			<?php	
				echo'<TR>';
			echo'<TH>Academic Year</TH>';
			echo'<TH>Name of the Program</TH>';
			echo'<TH>Title of the Program</TH>';
			echo'<TH>Organised By</TH>';
			echo'<TH>No.Of.Days</TH>';
			echo'<TH>From </TH>';
			echo'<TH>To </TH>';
			echo'<TH>Date </TH>';
			echo'<TH>Level Of The Program</TH>';
			echo'<TH>Certificate </TH>';
			echo'</TR>';
			
		while($row6 = $result6->fetch_assoc()) 
		{
			
			for( $i=1; $i<=$row6["attkey"];$i++)
			{
				$attcategory0="attcategory".$i;
				$atttitle0="atttitle".$i;
				$attorg0="attorg".$i;
				$attdays0="attdays".$i;
				$attfrom0="attfrom".$i;
				$attto0="attto".$i;
				$attdate0="attdate".$i;
				$attlevel0="attlevel".$i;				
				$attcer0="attcer".$i;
				$days = $row6["$attdays0"];

		
				echo'<TR>';
				echo'<TD><center>';
				echo $row6["ayear"];
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row6["$attcategory0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row6["$atttitle0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row6["$attorg0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row6["$attdays0"];
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo "--";
				}
				else
				{
				echo Date("d-m-Y",strtotime($row6["$attfrom0"]));
				}
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo "--";
				}
				else
				{
				echo Date("d-m-Y",strtotime($row6["$attto0"]));
				}
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo Date("d-m-Y",strtotime($row6["$attdate0"]));
				}
				else
				{
				echo "--";
				}
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row6["$attlevel0"];
				echo'</center></TD>';
				echo'<TD><center>';
				$cer=$row6["$attcer0"];
				?>
				       <a href="../../../gallery/atten/<?php echo $aaa6; ?>/<?php echo $cer ; ?>" target="_blank">View</a>
<?php
				echo'</center></TD>';
				echo'</TR>';
        
			}
			
		} ?>
				
	</TABLE>
	<?php
	}
	?>
	<!--Guest Lecture-->
	<?php
	$aaa7=$deptid."_fac_glc";
	$sql7="SELECT * FROM `$aaa7` WHERE sid = '$sid' AND gltitle1 IS NOT NULL ORDER BY ayear DESC";
	$result7 = $con->query($sql7);
	if($result7->num_rows > 0) 
	{
		
	?>
	<div class="row">
      <div class="col-25">
        <label for="fname">Guest Lecture:</label>
      </div>
	</div>
	
	<TABLE id="dataTable" width="100%" border="1">
			<?php	
				echo'<TR>';
			echo'<TH>Academic Year</TH>';
			echo'<TH>Title of the Program</TH>';
			echo'<TH>No.Of.Days</TH>';
			echo'<TH>From </TH>';
			echo'<TH>To </TH>';
			echo'<TH>Date </TH>';
			echo'<TH>Topic</TH>';
			echo'<TH>Organised By</TH>';
			echo'<TH>Place</TH>';
			echo'</TR>';
			
		while($row7 = $result7->fetch_assoc()) 
		{
			
			for( $i=1; $i<=$row7["glkey"];$i++)
			{
				$gltitle0="gltitle".$i;
				$gldays0="gldays".$i;
				$glfrom0="glfrom".$i;
				$glto0="glto".$i;
				$gldate0="gldate".$i;
				$gltopic0="gltopic".$i;
				$glorg0="glorg".$i;
				$glplace0="glplace".$i;
				$days = $row7["$gldays0"];

		
				echo'<TR>';
				echo'<TD><center>';
				echo $row7["ayear"];
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row7["$gltitle0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row7["$gldays0"];
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo "--";
				}
				else
				{
				echo Date("d-m-Y",strtotime($row7["$glfrom0"]));
				}
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo "--";
				}
				else
				{
				echo Date("d-m-Y",strtotime($row7["$glto0"]));
				}
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo Date("d-m-Y",strtotime($row7["$gldate0"]));
				}
				else
				{
				echo "--";
				}
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row7["$gltopic0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row7["$glorg0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row7["$glplace0"];
				echo'</center></TD>';
				
				echo'</TR>';
        
			}
			
		} ?>
				
	</TABLE>
	<?php
	}
	?>
	<!--Program Organized-->
	<?php
	$aaa8=$deptid."_fac_attorg";
	$sql8="SELECT * FROM `$aaa8` WHERE sid = '$sid' AND orgcategory1 IS NOT NULL ORDER BY ayear DESC";
	$result8 = $con->query($sql8);
	if($result8->num_rows > 0) 
	{
		
	?>
	<div class="row">
      <div class="col-25">
        <label for="fname">Program Organized:</label>
      </div>
	</div>
	
	<TABLE id="dataTable" width="100%" border="1">
			<?php	
				echo'<TR>';
			echo'<TH>Academic Year</TH>';
			echo'<TH>Name of the Program</TH>';
			echo'<TH>Title of the Program</TH>';
			echo'<TH>Funded By</TH>';
			echo'<TH>No.Of.Days</TH>';
			echo'<TH>From </TH>';
			echo'<TH>To </TH>';
			echo'<TH>Date </TH>';
			echo'<TH>Resource Person</TH>';
			echo'<TH>No. of Participants</TH>';
			echo'<TH>Level Of The Program</TH>';
			echo'</TR>';
			
		while($row8 = $result8->fetch_assoc()) 
		{
			
			for( $i=1; $i<=$row8["orgkey"];$i++)
			{
				$orgcategory0="orgcategory".$i;
				$orgtitle0="orgtitle".$i;
				$orgfun0="orgfun".$i;
				$orgdays0="orgdays".$i;
				$orgfrom0="orgfrom".$i;
				$orgto0="orgto".$i;
				$orgdate0="orgdate".$i;
				$orgres0="orgres".$i;
				$orgpar0="orgpar".$i;
				$orglevel0="orglevel".$i;
				$days = $row8["$orgdays0"];

		
				echo'<TR>';
				echo'<TD><center>';
				echo $row8["ayear"];
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row8["$orgcategory0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row8["$orgtitle0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row8["$orgfun0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row8["$orgdays0"];
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo "--";
				}
				else
				{
				echo Date("d-m-Y",strtotime($row8["$orgfrom0"]));
				}
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo "--";
				}
				else
				{
				echo Date("d-m-Y",strtotime($row8["$orgto0"]));
				}
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo Date("d-m-Y",strtotime($row8["$orgdate0"]));
				}
				else
				{
				echo "--";
				}
				echo'</center></TD>'; 
				echo'<TD><center>';
				echo $row8["$orgres0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row8["$orgpar0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row8["$orglevel0"];
				echo'</center></TD>';
				
				echo'</TR>';
        
			}
			
		} ?>
				
	</TABLE>
	<?php
	}
	?>
	<!--Awards-->
	<?php
	$aaa9=$deptid."_fac_member";
	$sql9="SELECT * FROM `$aaa9` WHERE sid = '$sid' AND aname1 IS NOT NULL ORDER BY ayear DESC";
	$result9 = $con->query($sql9);
	if($result9->num_rows > 0) 
	{
		
	?>
	<div class="row">
      <div class="col-25">
        <label for="fname">Awards:</label>
      </div>
	</div>
	
	<TABLE id="dataTable" width="100%" border="1">
			<?php	
				echo'<TR>';
			echo'<TH>Academic Year</TH>';
			echo'<TH>Name of the Award</TH>';
			echo'<TH>Issued By</TH>';
			echo'<TH>Month & Year</TH>';
			echo'</TR>';
			
		while($row9 = $result9->fetch_assoc()) 
		{
			
			for( $i=1; $i<=$row9["awakey"];$i++)
			{
				$aname0="aname".$i;
				$aissue0="aissue".$i;
				$amy0="amy".$i;
		
				echo'<TR>';
				echo'<TD><center>';
				echo $row9["ayear"];
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row9["$aname0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row9["$aissue0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row9["$amy0"];
				echo'</center></TD>';
				echo'</TR>';
        
			}
			
		} ?>
				
	</TABLE>
	<?php
	}
	?>
	<!--Patent-->
	<?php
	$aaa10=$deptid."_fac_funpat";
	$sql10="SELECT * FROM `$aaa10` WHERE sid = '$sid' AND nameofpat1 IS NOT NULL ORDER BY ayear DESC";
	$result10 = $con->query($sql10);
	if($result10->num_rows > 0) 
	{		
	?>
	<div class="row">
      <div class="col-25">
        <label for="fname">Patent:</label>
      </div>
	</div>
	
	<TABLE id="dataTable" width="100%" border="1">
			<?php	
			echo'<TR>';
			echo'<TH>Academic Year</TH>';
			echo'<TH>Name of The Pattent</TH>';
			echo'<TH>Title </TH>';		
			echo'<TH>File No </TH>';
			echo'</TR>';
			
		while($row10 = $result10->fetch_assoc()) 
		{
			
			for( $i=1; $i<=$row10["patkey"];$i++)
			{
				$nameofpat0="nameofpat".$i;
				$title0="title".$i;
				$fileno0="fileno".$i;
				
		
				echo'<TR>';
				echo'<TD><center>';
				echo $row10["ayear"];
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row10["$nameofpat0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row10["$title0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row10["$fileno0"];
				echo'</center></TD>';
				echo'</TR>';
        
			}
			
		} ?>
				
	</TABLE>
	<?php
	}
	?>
	<!--Research -->
	<?php
	$aaa11=$deptid."_fac_resg";
	$sql11="SELECT * FROM `$aaa11` WHERE sid = '$sid' AND uname IS NOT NULL ORDER BY year DESC";
	$result11 = $con->query($sql11);
	if($result11->num_rows > 0) 
	{		
	?>
	<div class="row">
      <div class="col-25">
        <label for="fname">Research Guidence:</label>
      </div>
	</div>
	
	<TABLE id="dataTable" width="100%" border="1">
			<?php	
			echo'<TR>';
			echo'<TH>University Name</TH>';
			echo'<TH>Supervisor ID.</TH>';
			echo'<TH>Register No.</TH>';
			echo'<TH>Name</TH>';
			echo'<TH>Year Of Registration</TH>';
			echo'<TH>Specialization</TH>';
			echo'<TH>Title of THESIS</TH>';
			echo'<TH>Year Of Completion</TH>';
			echo'</TR>';
			
		while($row11 = $result11->fetch_assoc()) 
			{
				
		
				echo'<TR>';
				echo'<TD><center>';
				echo $row11["uname"] ;
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row11["supid"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row11["reg"] ;
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row11["name"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row11["year"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row11["spec"];
				echo'</center></TD>';
				echo'<TD><center>'; 
				echo $row11["tit"];
				echo'</center></TD>';
				echo'<TD><center>'; 
				$cyear=$row11["cyear"];
				if($cyear=="ongoing")
				{	
					echo "Ongoing";
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
        
			} ?>
				
	</TABLE>
	<?php
	}
	?>
  </form>
</div>
