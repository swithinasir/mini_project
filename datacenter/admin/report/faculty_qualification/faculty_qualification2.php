<?php
include("../../../conn/config.php");
  header("Content-type: application/vnd.ms-word");
  header("Content-Disposition: attachment;Filename=faculty_qualification.doc");    
  echo "<html>";
  echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=Windows-1252\">";
  echo "<body>";
  $from1=$_POST['from'];
  $to1=$_POST['to'];
$cat=$_POST['cat'];
$qual=$_POST['qual'];
?>
<p align="center"><b>ADHIYAMAAN COLLEGE OF ENGINEERING (Autonomous)</b></p>
<hr>
<?php
function tab1($deptid,$to1,$from1,$cat,$sid)
{
	include("../../../conn/config.php");
	$abc=$deptid."_fac_edu";
	if($cat=='in')
	{
		$sql2="SELECT * FROM `$abc` WHERE sid = '$sid'";
		$result2 = $con->query($sql2);
	}
	else
	{
		$sql2="SELECT * FROM `$abc`";
		$result2 = $con->query($sql2);			
	}	
	if ($result2->num_rows > 0) 
	{
		while($row1 = $result2->fetch_assoc()) 
		{
			$abcd=$deptid."_fac";
			if($cat=='in')
		    {
				$sid1=$sid;
				$sql3="SELECT name FROM `$abcd` WHERE sid = '$sid1'";
				$result3 = $con->query($sql3);
			}
			else
			{
				$sid1=$row1["sid"];	
				$sql3="SELECT name FROM `$abcd` WHERE sid = '$sid1' && dor IS NULL";
				$result3 = $con->query($sql3);
			}	
		  if ($result3->num_rows > 0) 
		  {
			$row3 = $result3->fetch_assoc();
					if (($row1["phyear"] == NULL || $row1["phyear"] >= $to1) && ($row1["phyreg"] <= $to1 ) && ($row1["phkey"] == 1) ) 
					{
					?>
						<TR>
							<?php
							if($cat!='in')
							{
							?>
							<TD><?php echo $row1["sid"];?></TD>
							<TD><?php echo $row3["name"] ;?></TD>
							<?php
							}
							if($cat=='all')
							{
							?>
								<TD><?php echo $deptid;?></TD>
							<?php
							}
							?>
							<TD><?php echo $row1["phname"];?></TD>
							<TD><?php echo $row1["phuniversity"];?></TD>
							<TD><?php echo $row1["phspec"];?></TD>
							<TD><?php echo $row1["phbranch"];?></TD>
							<TD><?php echo $row1["phmode"];?></TD>
							<TD><?php echo $row1["phyreg"];?></TD>
							<TD><?php echo $row1["phthesis"];?></TD>
							<TD><?php echo $row1["phguide"];?></TD>					
						</TR>
					<?php 
					}
					if (($row1["ph1year"] == NULL || $row1["ph1year"] >= $to1) && ($row1["ph1yreg"] <= $to1 ) && ($row1["ph1key"] == 1) ) 
					{	
					?>
						<TR>
							<?php
							if($cat!='in')
							{
							?>
							<TD><?php echo $row1["sid"];?></TD>
							<TD><?php echo $row3["name"] ;?></TD>
							<?php
							}
							if($cat=='all')
							{
							?>
								<TD><?php echo $deptid;?></TD>
							<?php
							}
							?>
							<TD><?php echo $row1["ph1name"];?></TD>
							<TD><?php echo $row1["ph1university"];?></TD>
							<TD><?php echo $row1["ph1spec"];?></TD>
							<TD><?php echo $row1["ph1branch"];?></TD>
							<TD><?php echo $row1["ph1mode"];?></TD>
							<TD><?php echo $row1["ph1yreg"];?></TD>
							<TD><?php echo $row1["ph1thesis"];?></TD>
							<TD><?php echo $row1["ph1guide"];?></TD>					
						</TR>
					<?php
					}
					if (($row1["ph2year"] == NULL || $row1["ph2year"] >= $to1) && ($row1["ph2yreg"] <= $to1 ) && ($row1["ph2key"] == 1) ) 
					{
					?>
						<TR>
							<?php
							if($cat!='in')
							{
							?>
							<TD><?php echo $row1["sid"];?></TD>
							<TD><?php echo $row3["name"] ;?></TD>
							<?php
							}
							if($cat=='all')
							{
							?>
								<TD><?php echo $deptid;?></TD>
							<?php
							}
							?>
							<TD><?php echo $row1["ph2name"];?></TD>
							<TD><?php echo $row1["ph2university"];?></TD>
							<TD><?php echo $row1["ph2spec"];?></TD>
							<TD><?php echo $row1["ph2branch"];?></TD>
							<TD><?php echo $row1["ph2mode"];?></TD>
							<TD><?php echo $row1["ph2yreg"];?></TD>
							<TD><?php echo $row1["ph2thesis"];?></TD>
							<TD><?php echo $row1["ph2guide"];?></TD>
						</TR>
					<?php
					}
		  }	
		}
	}
}
/*----------THE SECOND FUNCTION STARTS FROM HERE . This is used for Ph.D Awarded staffs---------*/ 
function tab2($deptid,$to1,$from1,$cat,$sid)
{
	include("../../../conn/config.php");
	$abc=$deptid."_fac_edu";
	if($cat=='in')
	{
		$sql2="SELECT * FROM `$abc` WHERE sid = '$sid'";
		$result2 = $con->query($sql2);
	}
	else
	{
		$sql2="SELECT * FROM `$abc`";
		$result2 = $con->query($sql2);			
	}	
	if ($result2->num_rows > 0) 
	{
		while($row1 = $result2->fetch_assoc()) 
		{
			$abcd=$deptid."_fac";
			if($cat=='in')
		    {
				$sid1=$sid;
				$sql3="SELECT name FROM `$abcd` WHERE sid = '$sid1'";
				$result3 = $con->query($sql3);
			}
			else
			{
				$sid1=$row1["sid"];	
				$sql3="SELECT name FROM `$abcd` WHERE sid = '$sid1' && dor IS NULL";
				$result3 = $con->query($sql3);
			}	
		  if ($result3->num_rows > 0) 
		  {
			$row3 = $result3->fetch_assoc();
					if (($row1["phyear"] <= $to1 && $row1["phkey"] == 1 && $row1["phyear"] != NULL) ) 
					{
					?>
						<TR>
							<?php
							if($cat!='in')
							{
							?>
							<TD><?php echo $row1["sid"];?></TD>
							<TD><?php echo $row3["name"] ;?></TD>
							<?php
							}
							if($cat=='all')
							{
							?>
								<TD><?php echo $deptid;?></TD>
							<?php
							}
							?>
							<TD><?php echo $row1["phname"];?></TD>
							<TD><?php echo $row1["phuniversity"];?></TD>
							<TD><?php echo $row1["phspec"];?></TD>
							<TD><?php echo $row1["phbranch"];?></TD>
							<TD><?php echo $row1["phmode"];?></TD>
							<TD><?php echo $row1["phyreg"];?></TD>
							<TD><?php echo $row1["phyear"];?></TD>
							<TD><?php echo $row1["phthesis"];?></TD>
							<TD><?php echo $row1["phguide"];?></TD>					
						</TR>
					<?php 
					}
					if (($row1["ph1year"] <= $to1 && $row1["ph1key"] == 1 && $row1["ph1year"] != NULL)  ) 
					{	
					?>
						<TR>
							<?php
							if($cat!='in')
							{
							?>
							<TD><?php echo $row1["sid"];?></TD>
							<TD><?php echo $row3["name"] ;?></TD>
							<?php
							}
							if($cat=='all')
							{
							?>
								<TD><?php echo $deptid;?></TD>
							<?php
							}
							?>
							<TD><?php echo $row1["ph1name"];?></TD>
							<TD><?php echo $row1["ph1university"];?></TD>
							<TD><?php echo $row1["ph1spec"];?></TD>
							<TD><?php echo $row1["ph1branch"];?></TD>
							<TD><?php echo $row1["ph1mode"];?></TD>
							<TD><?php echo $row1["ph1yreg"];?></TD>
							<TD><?php echo $row1["ph1year"];?></TD>
							<TD><?php echo $row1["ph1thesis"];?></TD>
							<TD><?php echo $row1["ph1guide"];?></TD>					
						</TR>
					<?php
					}
					if (($row1["ph2year"] <= $to1 && $row1["ph2key"] == 1 && $row1["ph2year"] != NULL) ) 
					{
					?>
						<TR>
							<?php
							if($cat!='in')
							{
							?>
							<TD><?php echo $row1["sid"];?></TD>
							<TD><?php echo $row3["name"] ;?></TD>
							<?php
							}
							if($cat=='all')
							{
							?>
								<TD><?php echo $deptid;?></TD>
							<?php
							}
							?>
							<TD><?php echo $row1["ph2name"];?></TD>
							<TD><?php echo $row1["ph2university"];?></TD>
							<TD><?php echo $row1["ph2spec"];?></TD>
							<TD><?php echo $row1["ph2branch"];?></TD>
							<TD><?php echo $row1["ph2mode"];?></TD>
							<TD><?php echo $row1["ph2yreg"];?></TD>
							<TD><?php echo $row1["ph2year"];?></TD>
							<TD><?php echo $row1["ph2thesis"];?></TD>
							<TD><?php echo $row1["ph2guide"];?></TD>
						</TR>
					<?php
					}
		  }	
		}
	}
}
/*----------THE THIRD FUNCTION STARTS FROM HERE . This is used for only Post Graduate Completed staffs---------*/ 
function tab3($deptid,$to2,$from2,$cat,$sid)
{
	include("../../../conn/config.php");
	$abc=$deptid."_fac_edu";
	if($cat=='in')
	{
		$sql2="SELECT * FROM `$abc` WHERE sid = '$sid' && phkey IS NULL";
		$result2 = $con->query($sql2);
	}
	else
	{
		$sql2="SELECT * FROM `$abc` WHERE phkey IS NULL";
		$result2 = $con->query($sql2);			
	}	
	if ($result2->num_rows > 0) 
	{
		while($row1 = $result2->fetch_assoc()) 
		{
			$abcd=$deptid."_fac";
			if($cat=='in')
		    {
				$sid1=$sid;
				$sql3="SELECT name FROM `$abcd` WHERE sid = '$sid1'";
				$result3 = $con->query($sql3);
			}
			else
			{
				$sid1=$row1["sid"];	
				$sql3="SELECT name FROM `$abcd` WHERE sid = '$sid1' && doj < '$to2' && dor > '$from2' || dor IS NULL && doj < '$to2'";
				$result3 = $con->query($sql3);
			}	
			if ($result3->num_rows > 0) 
			{
				$row3 = $result3->fetch_assoc();
				if($row1["pkey"]==1)
				{
					$count=1;
				}
				if($row1["p1key"]==1)
				{
					$count=2;
				}
				if($row1["p2key"]==1)
				{
					$count=3;
				}
				for($i=0;$i<$count;$i++)
				{
					?>
						<TR>
						<?php
							if($i==0)
							{
								$pname="pname";
								$puniversity="puniversity";
								$pdegree="pdegree";
								$pbranch="pbranch";
								$pmode="pmode";
								$pyear="pyear";
								$ppercentage="ppercentage";
							}
							else
							{
								$pname="p".$i."name";
								$puniversity="p".$i."university";
								$pdegree="p".$i."degree";
								$pbranch="p".$i."branch";
								$pmode="p".$i."mode";
								$pyear="p".$i."year";
								$ppercentage="p".$i."percentage";
							}
							if($cat!='in')
							{
							?>
							<TD><?php echo $row1["sid"];?></TD>
							<TD><?php echo $row3["name"] ;?></TD>
							<?php
							}
							if($cat=='all')
							{
							?>
								<TD><?php echo $deptid;?></TD>
							<?php
							}
							?>
							<TD><?php echo $row1["pname"];?></TD>
							<TD><?php echo $row1["puniversity"];?></TD>
							<TD><?php echo $row1["pdegree"];?></TD>
							<TD><?php echo $row1["pbranch"];?></TD>
							<TD><?php echo $row1["pmode"];?></TD>
							<TD><?php echo $row1["pyear"];?></TD>
							<TD><?php echo $row1["ppercentage"];?></TD>		
						</TR>
					<?php 
				}
			}	
		}
	}
}
/* -------- The if condn starts from here . --------- */
if($cat=='all' || $cat=='dept' || $cat=='in')
{
	if($cat=='all')
	{
		$sql="SELECT deptid FROM dept";
		$result=mysqli_query($con,$sql);
		if($qual=='pursuing')
		{
		?>
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TH>Staff ID </TH>
				<TH>Name</TH>
				<TH>Department</TH>
				<TH>College Name</TH>
				<TH>University</TH>
				<TH>Specialization</TH>
				<TH>Branch</TH>
				<TH>Mode</TH>
				<TH>Year of Registration</TH>
				<TH>Title of Thesis</TH>
				<TH>Guide Name</TH>
			</TR>
			
			<?php
			while($row = $result->fetch_assoc()) 
			{
				$sid = 0;
				$deptid=$row['deptid'];
				tab1($deptid,$to1,$from1,$cat,$sid);
			}
			?>
			
		</TABLE>
		
		<?php
		}
		if($qual=='awarded')
		{
		?>
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TH>Staff ID </TH>
				<TH>Name</TH>
				<TH>Department</TH>
				<TH>College Name</TH>
				<TH>University</TH>
				<TH>Specialization</TH>
				<TH>Branch</TH>
				<TH>Mode</TH>
				<TH>Year of Registration</TH>
				<TH>Year of Complition</TH>
				<TH>Title of Thesis</TH>
				<TH>Guide Name</TH>
			</TR>
			
			<?php
			while($row = $result->fetch_assoc()) 
			{
				$sid = 0;
				$deptid=$row['deptid'];
				tab2($deptid,$to1,$from1,$cat,$sid);
			}
			?>
			
		</TABLE>
		
		<?php
		}
		if($qual=='pg')
		{
		?>
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TH>Staff ID </TH>
				<TH>Name</TH>
				<TH>Department</TH>
				<TH>College Name</TH>
				<TH>University</TH>
				<TH>Degree</TH>
				<TH>Branch</TH>
				<TH>Mode</TH>
				<TH>Year of Passing</TH>
				<TH>Percentage</TH>
			</TR>
			
			<?php
			while($row = $result->fetch_assoc()) 
			{
				$sid = 0;
				$deptid=$row['deptid'];
				tab3($deptid,$to1,$from1,$cat,$sid);
			}
			?>
			
		</TABLE>
		
		<?php
		}
	}
	if($cat=='dept')
	{
		if($qual=='pursuing')
		{
			$sid = 0;
			$deptid=$_POST['dept'];	
			echo "<br>";
			echo "<b>DEPARTMENT</b> : <i>",$deptid,"</i>";
			?>
			<TABLE id="dataTable" width="100%" border="1">
				<TR>
					<TH>Staff ID </TH>
					<TH>Name</TH>
					<TH>College Name</TH>
					<TH>University</TH>
					<TH>Specialization</TH>
					<TH>Branch</TH>
					<TH>Mode</TH>
					<TH>Year of Registration</TH>
					<TH>Title of Thesis</TH>
					<TH>Guide Name</TH>
				</TR>

				<?php
				tab1($deptid,$to1,$from1,$cat,$sid);
				?>
			
			</TABLE>
			
			<?php
		}
		if($qual=='awarded')
		{
			$sid = 0;
			$deptid=$_POST['dept'];	
			echo "<br>";
			echo "<b>DEPARTMENT</b> : <i>",$deptid,"</i>";
		?>
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TH>Staff ID </TH>
				<TH>Name</TH>
				<TH>College Name</TH>
				<TH>University</TH>
				<TH>Specialization</TH>
				<TH>Branch</TH>
				<TH>Mode</TH>
				<TH>Year of Registration</TH>
				<TH>Year of Complition</TH>
				<TH>Title of Thesis</TH>
				<TH>Guide Name</TH>
			</TR>
			
			<?php
			tab2($deptid,$to1,$from1,$cat,$sid);
			?>
			
		</TABLE>
		
		<?php
		}
		if($qual=='pg')
		{
			$sid = 0;
			$deptid=$_POST['dept'];	
			echo "<br>";
			echo "<b>DEPARTMENT</b> : <i>",$deptid,"</i>";
		?>
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TH>Staff ID </TH>
				<TH>Name</TH>
				<TH>College Name</TH>
				<TH>University</TH>
				<TH>Degree</TH>
				<TH>Branch</TH>
				<TH>Mode</TH>
				<TH>Year of Passing</TH>
				<TH>Percentage</TH>
			</TR>
			
			<?php
			tab3($deptid,$to1,$from1,$cat,$sid);
			?>
			
		</TABLE>
		
		<?php
		}
	}
	if($cat=='in')
	{
		if($qual=='pursuing')
		{
			$sid = $_POST['sid'];	
			$deptid=substr($sid, 3, 3);
			echo "<br>";
			echo "<b>Staff ID </b> : <i>",$sid,"</i>";
			echo "<br>";
			echo "<b>DEPARTMENT</b> : <i>",$deptid,"</i>";
			?>
			<TABLE id="dataTable" width="100%" border="1">
				<TR>
					<TH>College Name</TH>
					<TH>University</TH>
					<TH>Specialization</TH>
					<TH>Branch</TH>
					<TH>Mode</TH>
					<TH>Year of Registration</TH>
					<TH>Title of Thesis</TH>
					<TH>Guide Name</TH>
				</TR>

				<?php
				tab1($deptid,$to1,$from1,$cat,$sid);
				?>
			
			</TABLE>
			
			<?php
		}
		if($qual=='awarded')
		{
			$sid = $_POST['sid'];	
			$deptid=substr($sid, 3, 3);
			echo "<br>";
			echo "<b>Staff ID </b> : <i>",$sid,"</i>";
			echo "<br>";
			echo "<b>DEPARTMENT</b> : <i>",$deptid,"</i>";
		?>
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TH>College Name</TH>
				<TH>University</TH>
				<TH>Specialization</TH>
				<TH>Branch</TH>
				<TH>Mode</TH>
				<TH>Year of Registration</TH>
				<TH>Year of Complition</TH>
				<TH>Title of Thesis</TH>
				<TH>Guide Name</TH>
			</TR>
			
			<?php
			tab2($deptid,$to1,$from1,$cat,$sid);
			?>
			
		</TABLE>
		
		<?php
		}
		if($qual=='pg')
		{
			$sid = $_POST['sid'];	
			$deptid=substr($sid, 3, 3);
			echo "<br>";
			echo "<b>Staff ID </b> : <i>",$sid,"</i>";
			echo "<br>";
			echo "<b>DEPARTMENT</b> : <i>",$deptid,"</i>";
		?>
		
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TH>College Name</TH>
				<TH>University</TH>
				<TH>Degree</TH>
				<TH>Branch</TH>
				<TH>Mode</TH>
				<TH>Year of Passing</TH>
				<TH>Percentage</TH>
			</TR>
			
			<?php
			tab3($deptid,$to1,$from1,$cat,$sid);
			?>
			
		</TABLE>
		
		<?php
		}
	}
}
else
{
	echo '<script language="javascript">alert("Select anyone option from ALL , DEPARTMENT , INDIVIDUAL");</script>';
	echo '<script type="text/javascript">window.location.href = "faculty_qualification.php";</script>';
}
?>	
