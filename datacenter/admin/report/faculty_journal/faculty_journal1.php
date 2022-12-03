<?php
session_start();
include("../../../conn/config.php");
$from1=$_POST['from'];
$to1=$_POST['to'];
$cat=$_POST['cat'];
$qual=$_POST['qual'];
/*----------THE First FUNCTION STARTS FROM HERE . This is used for Journal with all category---------*/ 
function tab($deptid,$to1,$from1,$cat,$sid,$qual)
{
	include("../../../conn/config.php");
	$abc=$deptid."_fac_bkjrn";
	if($cat=='in')
	{
		$sql2="SELECT * FROM `$abc` WHERE sid = '$sid' ORDER BY ayear DESC";
		$result2 = $con->query($sql2);
	}
	else
	{
		$sql2="SELECT * FROM `$abc` ORDER BY ayear DESC";
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
				$sql3="SELECT name FROM `$abcd` WHERE sid = '$sid1' && dor IS NULL ";
				$result3 = $con->query($sql3);
			}	
			if ($result3->num_rows > 0) 
			{
				$row3 = $result3->fetch_assoc();
				for($i=1;$i<=$row1["jrnkey"];$i++)
				{		
					$ayear = $row1["ayear"];	
					$from = substr($ayear, 0, 4);	
					$to = substr($ayear, 5, 4);
					if (($from >= $from1) && ($to <= $to1) )
					{
						$jrnname="jrnname".$i;
						$jrnvol="jrnvol".$i;
						$jrnissue="jrnissue".$i;
						$jrnissn="jrnissn".$i;
						$jrncategory="jrncategory".$i;
						$jrnlink="jrnlink".$i;
						$jrncit="jrncit".$i;
						$jrnimpact="jrnimpact".$i;
						?>
						<TR>
						<?php
						if($qual==$row1["$jrncategory"])
						{							
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
							echo'<TD><center>';
							echo $row1["ayear"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrnname"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrnvol"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrnissue"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrnissn"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrncategory"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrnlink"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrncit"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrnimpact"] ;
							echo '</center></TD>';
							?>							
						</TR>
						<?php
						}
					}
				}	
			}	
		}
	}
}
/*----------THE Second FUNCTION STARTS FROM HERE . This is used for Journal with listed category---------*/ 
function tab1($deptid,$to1,$from1,$cat,$sid,$qual)
{
	include("../../../conn/config.php");
	$abc=$deptid."_fac_bkjrn";
	if($cat=='in')
	{
		$sql2="SELECT * FROM `$abc` WHERE sid = '$sid' ORDER BY ayear DESC";
		$result2 = $con->query($sql2);
	}
	else
	{
		$sql2="SELECT * FROM `$abc` ORDER BY ayear DESC";
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
				$sql3="SELECT name FROM `$abcd` WHERE sid = '$sid1' && dor IS NULL ";
				$result3 = $con->query($sql3);
			}	
			if ($result3->num_rows > 0) 
			{
				$row3 = $result3->fetch_assoc();
				for($i=1;$i<=$row1["jrnkey"];$i++)
				{		
					$ayear = $row1["ayear"];	
					$from = substr($ayear, 0, 4);	
					$to = substr($ayear, 5, 4);
					if (($from >= $from1) && ($to <= $to1) )
					{
						$jrnname="jrnname".$i;
						$jrnvol="jrnvol".$i;
						$jrnissue="jrnissue".$i;
						$jrnissn="jrnissn".$i;
						$jrncategory="jrncategory".$i;
						$jrnlink="jrnlink".$i;
						$jrncit="jrncit".$i;
						$jrnimpact="jrnimpact".$i;
						if($row1["$jrncategory"]!= "sci" && $row1["$jrncategory"]!= "wos" && $row1["$jrncategory"]!= "scopus" && $row1["$jrncategory"]!= "ugc")
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
							echo'<TD><center>';
							echo $row1["ayear"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrnname"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrnvol"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrnissue"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrnissn"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrncategory"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrnlink"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrncit"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrnimpact"] ;
							echo '</center></TD>';
							?>							
						</TR>
						<?php
						}
					}
				}	
			}	
		}
	}
}
/*----------THE Third FUNCTION STARTS FROM HERE . This is used for Journal with other category---------*/ 
function tab2($deptid,$to1,$from1,$cat,$sid,$qual)
{
	include("../../../conn/config.php");
	$abc=$deptid."_fac_bkjrn";
	if($cat=='in')
	{
		$sql2="SELECT * FROM `$abc` WHERE sid = '$sid' ORDER BY ayear DESC";
		$result2 = $con->query($sql2);
	}
	else
	{
		$sql2="SELECT * FROM `$abc` ORDER BY ayear DESC";
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
				$sql3="SELECT name FROM `$abcd` WHERE sid = '$sid1' && dor IS NULL ";
				$result3 = $con->query($sql3);
			}	
			if ($result3->num_rows > 0) 
			{
				$row3 = $result3->fetch_assoc();
				for($i=1;$i<=$row1["jrnkey"];$i++)
				{		
					$ayear = $row1["ayear"];	
					$from = substr($ayear, 0, 4);	
					$to = substr($ayear, 5, 4);
					if (($from >= $from1) && ($to <= $to1) )
					{					
						$jrnname="jrnname".$i;
						$jrnvol="jrnvol".$i;
						$jrnissue="jrnissue".$i;
						$jrnissn="jrnissn".$i;
						$jrncategory="jrncategory".$i;
						$jrnlink="jrnlink".$i;
						$jrncit="jrncit".$i;
						$jrnimpact="jrnimpact".$i;	
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
							echo'<TD><center>';
							echo $row1["ayear"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrnname"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrnvol"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrnissue"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrnissn"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrncategory"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrnlink"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrncit"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$jrnimpact"] ;
							echo '</center></TD>';
							?>							
						</TR>
					<?php
					}
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
		?>
		<div align="right">
			<form action="faculty_journal2.php" method="post">
				<input type="hidden" name="from" value="<?php echo $from1; ?>">
				<input type="hidden" name="to" value="<?php echo $to1; ?>">
				<input type="hidden" name="cat" value="<?php echo $cat; ?>">
				<input type="hidden" name="qual" value="<?php echo $qual; ?>">
				<button>
					<img width="50px" height="50px" src="../../../images/word.png">
				</button>
			</form><br>
		</div>
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TH>Staff ID </TH>
				<TH>Name</TH>
				<TH>Department</TH>
				<TH>Academic Year</TH>
				<TH>Name of the Journal</TH>
				<TH>Volume</TH>
				<TH>Issue</TH>
				<TH>ISSN/ISBN No</TH>
				<TH>Category</TH>
				<TH>Link</TH>
				<TH>Citation Index</TH>
				<TH>Impact Factor</TH>
			</TR>
			
			<?php
			while($row = $result->fetch_assoc()) 
			{
				$sid = 0;
				$deptid=$row['deptid'];
				if($qual=='all')
				{
					tab2($deptid,$to1,$from1,$cat,$sid,$qual);
				}
				if($qual=='others')
				{
					tab1($deptid,$to1,$from1,$cat,$sid,$qual);
				}
				if($qual!='all' && $qual!='others')
				{
					tab($deptid,$to1,$from1,$cat,$sid,$qual);
				}
			}
			?>
		</TABLE>
		<?php
	}
	if($cat=='dept')
	{
			$sid = 0;
			$deptid=$_POST['dept'];	
			echo "<br>";
			echo "<b>DEPARTMENT</b> : <i>",$deptid,"</i>";
		?>
		<div align="right">
			<form action="faculty_journal2.php" method="post">
				<input type="hidden" name="from" value="<?php echo $from1; ?>">
				<input type="hidden" name="to" value="<?php echo $to1; ?>">
				<input type="hidden" name="cat" value="<?php echo $cat; ?>">
				<input type="hidden" name="qual" value="<?php echo $qual; ?>">
				<input type="hidden" name="dept" value="<?php echo $deptid; ?>">
				<button>
					<img width="50px" height="50px" src="../../../images/word.png">
				</button>
			</form><br>
		</div>
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TH>Staff ID </TH>
				<TH>Name</TH>
				<TH>Academic Year</TH>
				<TH>Name of the Journal</TH>
				<TH>Volume</TH>
				<TH>Issue</TH>
				<TH>ISSN/ISBN No</TH>
				<TH>Category</TH>
				<TH>Link</TH>
				<TH>Citation Index</TH>
				<TH>Impact Factor</TH>
			</TR>
			
			<?php
				if($qual=='all')
				{
					tab2($deptid,$to1,$from1,$cat,$sid,$qual);
				}
				if($qual=='others')
				{
					tab1($deptid,$to1,$from1,$cat,$sid,$qual);
				}
				if($qual!='all' && $qual!='others')
				{
					tab($deptid,$to1,$from1,$cat,$sid,$qual);
				}
			?>			
		</TABLE>		
		<?php
	}
	if($cat=='in')
	{
			$sid = $_POST['sid'];	
			$deptid=substr($sid, 3, 3);
			echo "<br>";
			echo "<b>Staff ID </b> : <i>",$sid,"</i>";
			echo "<br>";
			echo "<b>DEPARTMENT</b> : <i>",$deptid,"</i>";
		?>
		<div align="right">
			<form action="faculty_journal2.php" method="post">
				<input type="hidden" name="from" value="<?php echo $from1; ?>">
				<input type="hidden" name="to" value="<?php echo $to1; ?>">
				<input type="hidden" name="cat" value="<?php echo $cat; ?>">
				<input type="hidden" name="qual" value="<?php echo $qual; ?>">
					<input type="hidden" name="sid" value="<?php echo $sid; ?>">
				<button>
					<img width="50px" height="50px" src="../../../images/word.png">
				</button>
			</form><br>
		</div>
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TH>Academic Year</TH>
				<TH>Name of the Journal</TH>
				<TH>Volume</TH>
				<TH>Issue</TH>
				<TH>ISSN/ISBN No</TH>
				<TH>Category</TH>
				<TH>Link</TH>
				<TH>Citation Index</TH>
				<TH>Impact Factor</TH>
			</TR>			
			<?php
				if($qual=='all')
				{
					tab2($deptid,$to1,$from1,$cat,$sid,$qual);
				}
				if($qual=='others')
				{
					tab1($deptid,$to1,$from1,$cat,$sid,$qual);
				}
				if($qual!='all' && $qual!='others')
				{
					tab($deptid,$to1,$from1,$cat,$sid,$qual);
				}
			?>			
		</TABLE>		
		<?php
	}
}
else
{
	echo '<script language="javascript">alert("Select anyone option from ALL , DEPARTMENT , INDIVIDUAL");</script>';
	echo '<script type="text/javascript">window.location.href = "faculty_journal.php";</script>';
}
?>	
