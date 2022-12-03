<?php
session_start();
$deptid=$_SESSION['deptid'];
include("../conn/config.php");
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

<!--<img width="100%" src="../../images/header.jpg">-->
<div class="container">
 <form action="fac_update.php" method="post" >
   <?php
  
	$sid=$_SESSION['sid'];
  // $sid=$_POST["sid"];
   $deptid=$_SESSION['deptid'];	
    $aaa=$deptid."_fac";
	$sql="SELECT * FROM `$aaa` WHERE sid = '$sid' ";
	$result = $con->query($sql);
	$row = $result->fetch_assoc();	
	$uploadpic=$row["uploadpic"];
	$src="../gallery/photo/".$aaa."/".$uploadpic;?>
	<img src="<?php echo $src ; ?>" alt="Avatar" class="avatar">
    <div class="row">
      <div class="col-25">
        <label for="fname">Name</label>
      </div>
      <div class="col-25">
       <label><input type="text" name="name" value="<?php echo $row["name"];?>"></label>
      </div>
	</div>
	 
	<div class="row">
      <div class="col-25">
        <label for="fname">Designation</label>
      </div>
      <div class="col-25">
       <label><input type="text" name="designation" value="<?php echo $row["designation"];?>"></label>
      </div>
	</div>	 
   
	<div class="row">
      <div class="col-25">
        <label for="fname">DOB</label>
      </div>
      <div class="col-25">
	  <?php $dob=Date("d-m-Y",strtotime($row["dob"])); ?>
       <label><input type="text" name="dob" value="<?php echo $row["dob"]; ?>"></label>
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
       <label><input type="text" name="doj" value="<?php echo $row["doj"]; ?>"></label>
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
       <label><input type="text" name="mob1" value="<?php echo $row["mob1"];?>"></label>
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
       <label><input type="text" name="comunity" value="<?php echo $row["comunity"];?>"></label>
      </div>
	   <div class="col-25">
      </div>
	   <div class="col-25">
       <input type="submit" name="update_personal" value="UPDATE">
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
					<TH>Action</TH>
				</TR>
				<?php
				if($row1["skey"]=="1")
				{
				?>
				<TR>
					<TD>10th</TD>
					<TD><input type="text" name="sname" value="<?php echo $row1["sname"];?>"></TD>
					<TD><input type="text" name="syear" value="<?php echo $row1["syear"];?>"></TD>
					<TD><input type="text" name="spercentage" value="<?php echo $row1["spercentage"];?>"></TD>
					<TD><input type="submit" name="update_sch" value="UPDATE"></TD>
				</TR>
				<?php } ?>
				<?php
				if($row1["s2key"]==1)
				{
				?>
				<TR>
					<TD>12th</TD>
					<TD><input type="text" name="s2name" value="<?php echo $row1["s2name"];?>"></TD>
					<TD><input type="text" name="s2year" value="<?php echo $row1["s2year"];?>"></TD>
					<TD><input type="text" name="s2percentage" value="<?php echo $row1["s2percentage"];?>"></TD>
					<TD><input type="submit" name="update_sch2" value="UPDATE"></TD>
				</TR>
				<?php } ?>
				<?php
				if($row1["dkey"]==1)
				{
				?>
				<TR>
					<TD>Diploma</TD>
					<TD><input type="text" name="dname" value="<?php echo $row1["dname"];?>"></TD>
					<TD><input type="text" name="dyear" value="<?php echo $row1["dyear"];?>"></TD>
					<TD><input type="text" name="dpercentage" value="<?php echo $row1["dpercentage"];?>"></TD>
					<TD><input type="submit" name="update_dip" value="UPDATE"></TD>
				</TR>
				<?php } ?><?php
				if($row1["d1key"]==1)
				{
				?>
				<TR>
					<TD>Diploma</TD>
					<TD><input type="text" name="d1name" value="<?php echo $row1["d1name"];?>"></TD>
					<TD><input type="text" name="d1year" value="<?php echo $row1["d1year"];?>"></TD>
					<TD><input type="text" name="d1percentage" value="<?php echo $row1["d1percentage"];?>"></TD>
					<TD><input type="submit" name="update_dip1" value="UPDATE"></TD>
				</TR>
				<?php } ?><?php
				if($row1["d2key"]==1)
				{
				?>
				<TR>
					<TD>Diploma</TD>
					<TD><input type="text" name="d2name" value="<?php echo $row1["d2name"];?>"></TD>
					<TD><input type="text" name="d2year" value="<?php echo $row1["d2year"];?>"></TD>
					<TD><input type="text" name="d2percentage" value="<?php echo $row1["d2percentage"];?>"></TD>
					<TD><input type="submit" name="update_dip2" value="UPDATE"></TD>
				</TR>
				<?php } ?><?php
				if($row1["ukey"]==1)
				{
				?>
				<TR>
					<TD>UG</TD>
					<TD><input type="text" name="uname" value="<?php echo $row1["uname"];?>"></TD>
					<TD><input type="text" name="uyear" value="<?php echo $row1["uyear"];?>"></TD>
					<TD><input type="text" name="upercentage" value="<?php echo $row1["upercentage"];?>"></TD>
					<TD><input type="submit" name="update_ug" value="UPDATE"></TD>
				</TR>
				<?php } ?><?php
				if($row1["u1key"]==1)
				{
				?>
				<TR>
					<TD>UG</TD>
					<TD><input type="text" name="u1name" value="<?php echo $row1["u1name"];?>"></TD>
					<TD><input type="text" name="u1year" value="<?php echo $row1["u1year"];?>"></TD>
					<TD><input type="text" name="u1percentage" value="<?php echo $row1["u1percentage"];?>"></TD>
					<TD><input type="submit" name="update_ug1" value="UPDATE"></TD>
				</TR>
				<?php } ?><?php
				if($row1["u2key"]==1)
				{
				?>
				<TR>
					<TD>UG</TD>
					<TD><input type="text" name="u2name" value="<?php echo $row1["u2name"];?>"></TD>
					<TD><input type="text" name="u2year" value="<?php echo $row1["u2year"];?>"></TD>
					<TD><input type="text" name="u2percentage" value="<?php echo $row1["u2percentage"];?>"></TD>
					<TD><input type="submit" name="update_ug2" value="UPDATE"></TD>
				</TR>
				<?php } ?><?php
				if($row1["pkey"]==1)
				{
				?>
				<TR>
					<TD>PG</TD>
					<TD><input type="text" name="pname" value="<?php echo $row1["pname"];?>"></TD>
					<TD><input type="text" name="pyear" value="<?php echo $row1["pyear"];?>"></TD>
					<TD><input type="text" name="ppercentage" value="<?php echo $row1["ppercentage"];?>"></TD>
					<TD><input type="submit" name="update_pg" value="UPDATE"></TD>
				</TR>
				<?php } ?><?php
				if($row1["p1key"]==1)
				{
				?>
				<TR>
					<TD>PG</TD>
					<TD><input type="text" name="p1name" value="<?php echo $row1["p1name"];?>"></TD>
					<TD><input type="text" name="p1year" value="<?php echo $row1["p1year"];?>"></TD>
					<TD><input type="text" name="p1percentage" value="<?php echo $row1["p1percentage"];?>"></TD>
					<TD><input type="submit" name="update_pg1" value="UPDATE"></TD>
				</TR>
				<?php } ?><?php
				if($row1["p2key"]==1)
				{
				?>
				<TR>
					<TD>PG</TD>
					<TD><input type="text" name="p2name" value="<?php echo $row1["p2name"];?>"></TD>
					<TD><input type="text" name="p2year" value="<?php echo $row1["p2year"];?>"></TD>
					<TD><input type="text" name="p2percentage" value="<?php echo $row1["p2percentage"];?>"></TD>
					<TD><input type="submit" name="update_pg2" value="UPDATE"></TD>
				</TR>
				<?php } ?><?php
				if($row1["mkey"]==1)
				{
				?>
				<TR>
					<TD>Mphil</TD>
					<TD><input type="text" name="mname" value="<?php echo $row1["mname"];?>"></TD>
					<TD><input type="text" name="myear" value="<?php echo $row1["myear"];?>"></TD>
					<TD><input type="text" name="mpercentage" value="<?php echo $row1["mpercentage"];?>"></TD>
					<TD><input type="submit" name="update_mphill" value="UPDATE"></TD>
				</TR>
				<?php } ?><?php
				if($row1["phkey"]==1)
				{
				?>
				<TR>
					<TD>Ph.D</TD>
					<TD><input type="text" name="phname" value="<?php echo $row1["phname"];?>"></TD>
					<TD><input type="text" name="phyear" value="<?php echo $row1["phyear"];?>"></TD>
					<TD>-</TD>
					<TD><input type="submit" name="update_ph" value="UPDATE"></TD>
				</TR>
				<?php } ?><?php
				if($row1["ph1key"]==1)
				{
				?>
				<TR>
					<TD>Ph.D</TD>
					<TD><input type="text" name="ph1name" value="<?php echo $row1["ph1name"];?>"></TD>
					<TD><input type="text" name="ph1year" value="<?php echo $row1["ph1year"];?>"></TD>
					<TD>-</TD>
					<TD><input type="submit" name="update_ph1" value="UPDATE"></TD>
				</TR>
				<?php } ?><?php
				if($row1["ph2key"]==1)
				{
				?>
				<TR>
					<TD>Ph.D</TD>
					<TD><input type="text" name="ph2name" value="<?php echo $row1["ph2name"];?>"></TD>
					<TD><input type="text" name="ph2year" value="<?php echo $row1["ph2year"];?>"></TD>
					<TD>-</TD>
					<TD><input type="submit" name="update_ph2" value="UPDATE"></TD>
				</TR>
  </form>
				<?php } ?>
				
	</TABLE>
	<?php
	}
	?>
	<!--Research Project-->
	<?php
	$aaa2=$deptid."_fac_funpat";
	$sql2="SELECT * FROM `$aaa2` WHERE sid = '$sid' AND titleofpro1 IS NOT NULL";
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
			?>
				<TR>
				<form action="fac_update.php" method="post" >
				<TD>
				<input type="text" name="ayear" value="<?php echo $row2["ayear"];?>">
				</TD>
				<TD>
				<input type="text" name="titleofpro1" value="<?php echo $row2["titleofpro1"];?>">
				</TD>
				<TD><input type="text" name="duration1" value="<?php echo $row2["duration1"];?>">
				</TD>
				<TD>
				<input type="text" name="amountsan1" value="<?php echo $row2["amountsan1"];?>">
				</TD>
				<TD>
				<input type="text" name="agency1" value="<?php echo $row2["agency1"];?>">
				</TD>
				<TD>
				<input type="text" name="startdate1" value="<?php echo $row2["startdate1"];?>">
				</TD>
				<TD>
				<input type="text" name="copiname1" value="<?php echo $row2["copiname1"];?>">
				</TD>
				<?php
				if($row2["year1"]==0)
				{
					echo'<TD>';
					echo 'OnGoing';
					echo'</TD>';
				?>
				<input type="hidden" name="year1" value="<?php echo 'OnGoing';?>">
				<?php					
				}
				else
				{?>
					<TD>
				<input type="text" name="year1" value="<?php echo $row2["year1"];?>">
				</TD>
				<?php
				}
				?>				
				<input type="hidden" name="id" value="<?php echo $row2["id"];?>">
				<TD><input type="submit" name="update_research_project" value="UPDATE"></TD>
				</form>
				</TR>
				<?php
				
			
			
		} ?>
				
	</TABLE>
	<?php
	}
	?>
	<!--Book Publication-->
	<?php
	$aaa3=$deptid."_fac_bkjrn";
	$sql3="SELECT * FROM `$aaa3` WHERE sid = '$sid' AND bk1 IS NOT NULL";
	$result3 = $con->query($sql3);
	if($result3->num_rows > 0 )
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
			echo'<TH>Action</TH>';	
			echo'</TR>';
			
				while($row3 = $result3->fetch_assoc()) 
		{
			?>
			<TR>
			<form action="fac_update.php" method="post" >
			<TD><input type="text" name="ayear" value="<?php echo $row3["ayear"];?>"></TD>
			<TD><input type="text" name="bk1" value="<?php echo $row3["bk1"];?>"></TD>
			<TD><input type="text" name="bkcha1" value="<?php echo $row3["bkcha1"];?>"></TD>
			<TD><input type="text" name="bkissn1" value="<?php echo $row3["bkissn1"];?>"></TD>
			<TD><input type="text" name="bkmy1" value="<?php echo $row3["bkmy1"];?>"></TD>
			<TD><input type="text" name="bkpub1" value="<?php echo $row3["bkpub1"];?>"></TD>
			<TD><input type="text" name="bktype1" value="<?php echo $row3["bktype1"];?>"></TD>
			<input type="hidden" name="id" value="<?php echo $row3["id"];?>">
			<TD><input type="submit" name="update_book" value="UPDATE"></TD>
			</form>
			</TR>
        <?php
		} ?>
				
	</TABLE>
	<?php
	}
	?>
	<!--Journal Publication-->
	<?php
	$aaa4=$deptid."_fac_bkjrn";
	$sql4="SELECT * FROM `$aaa4` WHERE sid = '$sid' AND jrnname1 IS NOT NULL";
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
			echo'<TH>Action </TH>';
			echo'</TR>';
			
		while($row4 = $result4->fetch_assoc()) 
		{
			?>
			
			<TR>
			<form action="fac_update.php" method="post" >
			<TD><input type="text" name="ayear" value="<?php echo $row4["ayear"];?>"></TD>
			<TD><input type="text" name="jrntitle1" value="<?php echo $row4["jrntitle1"];?>"></TD>
			<TD><input type="text" name="jrnname1" value="<?php echo $row4["jrnname1"];?>"></TD>
			<TD><input type="text" name="jrnvol1" value="<?php echo $row4["jrnvol1"];?>"></TD>
			<TD><input type="text" name="jrnissue1" value="<?php echo $row4["jrnissue1"];?>"></TD>
			<TD><input type="text" name="jrnissn1" value="<?php echo $row4["jrnissn1"];?>"></TD>
			<TD><input type="text" name="jrncategory1" value="<?php echo $row4["jrncategory1"];?>"></TD>
			<TD><input type="text" name="jrnlink1" value="<?php echo $row4["jrnlink1"];?>"></TD>
			<TD><input type="text" name="jrncit1" value="<?php echo $row4["jrncit1"];?>"></TD>
			<TD><input type="text" name="jrnimpact1" value="<?php echo $row4["jrnimpact1"];?>"></TD>
			<input type="hidden" name="id" value="<?php echo $row4["id"];?>">
			<TD><input type="submit" name="update_journal" value="UPDATE"></TD>
			</form>
			</TR>
        
		<?php			
		} 
		?>
				
	</TABLE>
	<?php
	}
	?>
	<!--Conference-->
	<?php
	$aaa5=$deptid."_fac_glc";
	$sql5="SELECT * FROM `$aaa5` WHERE sid = '$sid' AND conname1 IS NOT NULL";
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
			echo'<TH>Action</TH>';
			echo'</TR>';
			
		while($row5 = $result5->fetch_assoc()) 
		{
			?>
			<TR>
			<form action="fac_update.php" method="post" >
			<TD><input type="text" name="ayear" value="<?php echo $row5["ayear"];?>"></TD>
			<TD><input type="text" name="conname1" value="<?php echo $row5["conname1"];?>"></TD>
			<TD><input type="text" name="contitle1" value="<?php echo $row5["contitle1"];?>"></TD>
			<TD><input type="text" name="conorg1" value="<?php echo $row5["conorg1"];?>"></TD>
			<TD><input type="text" name="condays1" value="<?php echo $row5["condays1"];?>"></TD>
			<TD>
			<?php
				$days=$row5["condays1"];
				if($days==1)
				{
				echo "--";
				?>
				<input type="hidden" name="confrom1" value="<?php echo NULL;?>">
				<?php
				}
				else
				{
					?>
					<input type="text" name="confrom1" value="<?php echo $row5["confrom1"];?>">
					<?php
				}
				?>
				</TD>
				<TD>
				<?php
				if($days==1)
				{
				echo "--";
				?>
				<input type="hidden" name="conto1" value="<?php echo NULL;?>">
				<?php
				}
				else
				{
					?>
					<input type="text" name="conto1" value="<?php echo $row5["conto1"];?>">
					<?php
				}
				?>
				</TD>
				<TD>
				<?php
				if($days==1)
				{
					?>
					<input type="text" name="condate1" value="<?php echo $row5["condate1"];?>">
					<?php
					}
				else
				{
				echo "--";
				?>
				<input type="hidden" name="condate1" value="<?php echo NULL;?>">
				<?php
				}
				?>
				</TD>
				<TD>
				<input type="text" name="conlevel1" value="<?php echo $row5["conlevel1"];?>">				
				</TD>				
			<input type="hidden" name="id" value="<?php echo $row5["id"];?>">
			<TD><input type="submit" name="update_conference" value="UPDATE"></TD>
			</form>
			</TR>
			
		<?php	
		} ?>
				
	</TABLE>
	<?php
	}
	?>
	<!--Attended-->
	<?php
	$aaa6=$deptid."_fac_attorg";
	$sql6="SELECT * FROM `$aaa6` WHERE sid = '$sid' AND attcategory1 IS NOT NULL";
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
			echo'<TH>Action</TH>';
			echo'</TR>';
			
		while($row6 = $result6->fetch_assoc()) 
		{
			?>
			<TR>
			<form action="fac_update.php" method="post" >
			<TD><input type="text" name="ayear" value="<?php echo $row6["ayear"];?>"></TD>
			<TD><input type="text" name="attcategory1" value="<?php echo $row6["attcategory1"];?>"></TD>
			<TD><input type="text" name="atttitle1" value="<?php echo $row6["atttitle1"];?>"></TD>
			<TD><input type="text" name="attorg1" value="<?php echo $row6["attorg1"];?>"></TD>
			<TD><input type="text" name="attdays1" value="<?php echo $row6["attdays1"];?>"></TD>
			<TD>
			<?php
				$days=$row6["attdays1"];
				if($days==1)
				{
				echo "--";
				?>
				<input type="hidden" name="attfrom1" value="<?php echo NULL;?>">
				<?php
				}
				else
				{
					?>
					<input type="text" name="attfrom1" value="<?php echo $row6["attfrom1"];?>">
					<?php
				}
				?>
				</TD>
				<TD>
				<?php
				if($days==1)
				{
				echo "--";
				?>
				<input type="hidden" name="attto1" value="<?php echo NULL;?>">
				<?php
				}
				else
				{
					?>
					<input type="text" name="attto1" value="<?php echo $row6["attto1"];?>">
					<?php
				}
				?>
				</TD>
				<TD>
				<?php
				if($days==1)
				{
					?>
					<input type="text" name="attdate1" value="<?php echo $row6["attdate1"];?>">
					<?php
					}
				else
				{
				echo "--";
				?>
				<input type="hidden" name="attdate1" value="<?php echo NULL;?>">
				<?php
				}
				?>
				</TD>
				<TD>
				<input type="text" name="attlevel1" value="<?php echo $row6["attlevel1"];?>">				
				</TD>				
			<input type="hidden" name="id" value="<?php echo $row6["id"];?>">
			<TD><input type="submit" name="update_attended" value="UPDATE"></TD>
			</form>
			</TR>
			<?php
		} ?>
				
	</TABLE>
	<?php
	}
	?>
	<!--Guest Lecture-->
	<?php
	$aaa7=$deptid."_fac_glc";
	$sql7="SELECT * FROM `$aaa7` WHERE sid = '$sid' AND gltitle1 IS NOT NULL";
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
			echo'<TH>Action</TH>';
			echo'</TR>';
			
		while($row7 = $result7->fetch_assoc()) 
		{
			?>
			<TR>
			<form action="fac_update.php" method="post" >
			<TD><input type="text" name="ayear" value="<?php echo $row7["ayear"];?>"></TD>
			<TD><input type="text" name="gltitle1" value="<?php echo $row7["gltitle1"];?>"></TD>
			<TD><input type="text" name="gldays1" value="<?php echo $row7["gldays1"];?>"></TD>
			<TD>
			<?php
				$days=$row7["gldays1"];
				if($days==1)
				{
				echo "--";
				?>
				<input type="hidden" name="glfrom1" value="<?php echo NULL;?>">
				<?php
				}
				else
				{
					?>
					<input type="text" name="glfrom1" value="<?php echo $row7["glfrom1"];?>">
					<?php
				}
				?>
				</TD>
				<TD>
				<?php
				if($days==1)
				{
				echo "--";
				?>
				<input type="hidden" name="glto1" value="<?php echo NULL;?>">
				<?php
				}
				else
				{
					?>
					<input type="text" name="glto1" value="<?php echo $row7["glto1"];?>">
					<?php
				}
				?>
				</TD>
				<TD>
				<?php
				if($days==1)
				{
					?>
					<input type="text" name="gldate1" value="<?php echo $row7["gldate1"];?>">
					<?php
					}
				else
				{
				echo "--";
				?>
				<input type="hidden" name="gldate1" value="<?php echo NULL;?>">
				<?php
				}
				?>
				</TD>		
			<TD><input type="text" name="gltopic1" value="<?php echo $row7["gltopic1"];?>"></TD>
			<TD><input type="text" name="glorg1" value="<?php echo $row7["glorg1"];?>"></TD>
			<TD><input type="text" name="glplace1" value="<?php echo $row7["glplace1"];?>"></TD>			
			<input type="hidden" name="id" value="<?php echo $row7["id"];?>">
			<TD><input type="submit" name="update_gl" value="UPDATE"></TD>
			</form>
			</TR>
			<?php
			
		} ?>
				
	</TABLE>
	<?php
	}
	?>
	<!--Program Organized-->
	<?php
	$aaa8=$deptid."_fac_attorg";
	$sql8="SELECT * FROM `$aaa8` WHERE sid = '$sid' AND orgcategory1 IS NOT NULL";
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
			echo'<TH>Action</TH>';
			echo'</TR>';
			
		while($row8 = $result8->fetch_assoc()) 
		{
			?>
			<TR>
			<form action="fac_update.php" method="post" >
			<TD><input type="text" name="ayear" value="<?php echo $row8["ayear"];?>"></TD>
			<TD><input type="text" name="orgcategory1" value="<?php echo $row8["orgcategory1"];?>"></TD>
			<TD><input type="text" name="orgtitle1" value="<?php echo $row8["orgtitle1"];?>"></TD>
			<TD><input type="text" name="orgfun1" value="<?php echo $row8["orgfun1"];?>"></TD>
			<TD><input type="text" name="orgdays1" value="<?php echo $row8["orgdays1"];?>"></TD>
			
			<TD>
			<?php
				$days=$row8["orgdays1"];
				if($days==1)
				{
				echo "--";
				?>
				<input type="hidden" name="orgfrom1" value="<?php echo NULL;?>">
				<?php
				}
				else
				{
					?>
					<input type="text" name="orgfrom1" value="<?php echo $row8["orgfrom1"];?>">
					<?php
				}
				?>
				</TD>
				<TD>
				<?php
				if($days==1)
				{
				echo "--";
				?>
				<input type="hidden" name="orgto1" value="<?php echo NULL;?>">
				<?php
				}
				else
				{
					?>
					<input type="text" name="orgto1" value="<?php echo $row8["orgto1"];?>">
					<?php
				}
				?>
				</TD>
				<TD>
				<?php
				if($days==1)
				{
					?>
					<input type="text" name="orgdate1" value="<?php echo $row8["orgdate1"];?>">
					<?php
					}
				else
				{
				echo "--";
				?>
				<input type="hidden" name="orgdate1" value="<?php echo NULL;?>">
				<?php
				}
				?>
				</TD>		
			<TD><input type="text" name="orgres1" value="<?php echo $row8["orgres1"];?>"></TD>
			<TD><input type="text" name="orgpar1" value="<?php echo $row8["orgpar1"];?>"></TD>
			<TD><input type="text" name="orglevel1" value="<?php echo $row8["orglevel1"];?>"></TD>			
			<input type="hidden" name="id" value="<?php echo $row8["id"];?>">
			<TD><input type="submit" name="update_orga" value="UPDATE"></TD>
			</form>
			</TR>
			<?php
			
			
		} ?>
				
	</TABLE>
	<?php
	}
	?>
	<!--Awards-->
	<?php
	$aaa9=$deptid."_fac_member";
	$sql9="SELECT * FROM `$aaa9` WHERE sid = '$sid' AND aname1 IS NOT NULL";
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
			echo'<TH>Action</TH>';
			echo'</TR>';
			
		while($row9 = $result9->fetch_assoc()) 
		{
			?>
			<TR>
			<form action="fac_update.php" method="post" >
			<TD><input type="text" name="ayear" value="<?php echo $row9["ayear"];?>"></TD>
			<TD><input type="text" name="aname1" value="<?php echo $row9["aname1"];?>"></TD>
			<TD><input type="text" name="aissue1" value="<?php echo $row9["aissue1"];?>"></TD>
			<TD><input type="text" name="amy1" value="<?php echo $row9["amy1"];?>"></TD>
			<input type="hidden" name="id" value="<?php echo $row9["id"];?>">
			<TD><input type="submit" name="update_award" value="UPDATE"></TD>
			</form>
			</TR>
			<?php
			
			
		} ?>
				
	</TABLE>
	<?php
	}
	?>
	<!--Patent-->
	<?php
	$aaa10=$deptid."_fac_funpat";
	$sql10="SELECT * FROM `$aaa10` WHERE sid = '$sid'  AND nameofpat1 IS NOT NULL";
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
			echo'<TH>Action </TH>';
			echo'</TR>';
			
		while($row10 = $result10->fetch_assoc()) 
		{
			?>
			<TR>
			<form action="fac_update.php" method="post" >
			<TD><input type="text" name="ayear" value="<?php echo $row10["ayear"];?>"></TD>
			<TD><input type="text" name="nameofpat1" value="<?php echo $row10["nameofpat1"];?>"></TD>
			<TD><input type="text" name="title1" value="<?php echo $row10["title1"];?>"></TD>
			<TD><input type="text" name="fileno1" value="<?php echo $row10["fileno1"];?>"></TD>
			<input type="hidden" name="id" value="<?php echo $row10["id"];?>">
			<TD><input type="submit" name="update_pat" value="UPDATE"></TD>
			</form>
			</TR>
			<?php
			
		} ?>
				
	</TABLE>
	<?php
	}
	?>
	<!--Research -->
	<?php
	$aaa11=$deptid."_fac_resg";
	$sql11="SELECT * FROM `$aaa11` WHERE sid = '$sid' AND uname IS NOT NULL";
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
			echo'<TH>Action</TH>';
			echo'</TR>';
			
		while($row11 = $result11->fetch_assoc()) 
			{
				?>
			<TR>
			<form action="fac_update.php" method="post" >
			<TD><input type="text" name="uname" value="<?php echo $row11["uname"];?>"></TD>
			<TD><input type="text" name="supid" value="<?php echo $row11["supid"];?>"></TD>
			<TD><input type="text" name="reg" value="<?php echo $row11["reg"];?>"></TD>
			<TD><input type="text" name="name" value="<?php echo $row11["name"];?>"></TD>
			<TD><input type="text" name="year" value="<?php echo $row11["year"];?>"></TD>
			<TD><input type="text" name="spec" value="<?php echo $row11["spec"];?>"></TD>
			<TD><input type="text" name="tit" value="<?php echo $row11["tit"];?>"></TD>
			<TD>
			<?php
			$cyear=$row11["cyear"];
				if($cyear=="ongoing")
				{	
					echo "Ongoing";
					?>
						<input type="hidden" name="cyear" value="<?php echo 'ongoing';?>">
					<?php
				}
				else
				{
					if($cyear=="discontinued")
					{
						echo "Discontinued";
						?>
						<input type="hidden" name="cyear" value="<?php echo 'discontinued';?>">
						<?php
					}
					else
					{
						?>
						<input type="text" name="cyear" value="<?php echo $cyear;?>">
						<?php
					}
				}
			?>
			
			</TD>
			<input type="hidden" name="id" value="<?php echo $row11["id"];?>">
			<TD><input type="submit" name="update_rg" value="UPDATE"></TD>
			</form>
			</TR>
			<?php
		
			} ?>
				
	</TABLE>
	<?php
	}
	?>
	<!--Responsibility-->
	<?php
	$aaa12=$deptid."_fac_member";
	$sql12="SELECT * FROM `$aaa12` WHERE sid = '$sid'  AND res1 IS NOT NULL";
	$result12 = $con->query($sql12);
	if($result12->num_rows > 0) 
	{		
	?>
	<div class="row">
      <div class="col-25">
        <label for="fname">Responsibility:</label>
      </div>
	</div>
	
	<TABLE id="dataTable" width="100%" border="1">
			<?php	
			echo'<TR>';
			echo'<TH>Academic Year</TH>';
			echo'<TH>Types of Responsibility</TH>';
			echo'<TH>Level </TH>';	
			echo'<TH>Action </TH>';
			echo'</TR>';
			
		while($row12 = $result12->fetch_assoc()) 
		{
			?>
			<TR>
			<form action="fac_update.php" method="post" >
			<TD><input type="text" name="ayear" value="<?php echo $row12["ayear"];?>"></TD>
			<TD><input type="text" name="res1" value="<?php echo $row12["res1"];?>"></TD>
			<TD><input type="text" name="level1" value="<?php echo $row12["level1"];?>"></TD>
			<input type="hidden" name="id" value="<?php echo $row12["id"];?>">
			<TD><input type="submit" name="update_res" value="UPDATE"></TD>
			</form>
			</TR>
			<?php
			
		} ?>
				
	</TABLE>
	<?php
	}
	?>
	<!--Membership-->
	<?php
	$aaa13=$deptid."_fac_member";
	$sql13="SELECT * FROM `$aaa13` WHERE sid = '$sid'  AND memberid1 IS NOT NULL";
	$result13 = $con->query($sql13);
	if($result13->num_rows > 0) 
	{		
	?>
	<div class="row">
      <div class="col-25">
        <label for="fname">Membership:</label>
      </div>
	</div>
	
	<TABLE id="dataTable" width="100%" border="1">
			<?php	
			echo'<TR>';
			echo'<TH>Academic Year</TH>';
			echo'<TH>Society Name</TH>';
			echo'<TH>Membership ID </TH>';		
			echo'<TH>Validity </TH>';	
			echo'<TH>Action </TH>';
			echo'</TR>';
			
		while($row13 = $result13->fetch_assoc()) 
		{
			?>
			<TR>
			<form action="fac_update.php" method="post" >
			<TD><input type="text" name="ayear" value="<?php echo $row13["ayear"];?>"></TD>
			<TD><input type="text" name="name1" value="<?php echo $row13["name1"];?>"></TD>
			<TD><input type="text" name="memberid1" value="<?php echo $row13["memberid1"];?>"></TD>
			<TD><input type="text" name="validity1" value="<?php echo $row13["validity1"];?>"></TD>
			<input type="hidden" name="id" value="<?php echo $row13["id"];?>">
			<TD><input type="submit" name="update_mem" value="UPDATE"></TD>
			</form>
			</TR>
			<?php
			
		} ?>
				
	</TABLE>
	<?php
	}
	?>
</div>
