<?php
include("../../../conn/config.php");
header("Content-type: application/vnd.ms-word");
header("Content-Disposition: attachment;Filename=faculty_member.doc");    
echo "<html>";
echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=Windows-1252\">";
echo "<body>";
$cat=$_POST['cat'];
$qual=$_POST['qual'];
?>
<p align="center"><b>ADHIYAMAAN COLLEGE OF ENGINEERING (Autonomous)</b></p>
<hr>
<?php

/*----------THE First FUNCTION STARTS FROM HERE . This is used for displaying attend progarm with listed  category---------*/ 
function tab($deptid,$cat,$sid,$qual)
{
	include("../../../conn/config.php");
	$abc=$deptid."_fac_member";
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
				for($i=1;$i<=$row1["memkey"];$i++)
				{		
					$ayear = $row1["ayear"];	
					$from = substr($ayear, 0, 4);	
					$to = substr($ayear, 5, 4);
					//if (($from >= $from1) && ($to <= $to1) )
					//{
						$name0="name".$i;
						$memberid0="memberid".$i;
						$validity0="validity".$i;
						?>
						<TR>
						<?php
						if($qual==$row1["$name0"])
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
				echo $row1["ayear"];
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row1["$name0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$memberid0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$validity0"];
				echo'</center></TD>';
				
							?>							
						</TR>
						<?php
						}
					//}
				}	
			}	
		}
	}
}
/*----------THE Second FUNCTION STARTS FROM HERE . This is used fordisplaying attend program  with Other category---------
function tab1($deptid,$to1,$from1,$cat,$sid,$qual)
{
	include("../../../conn/config.php");
	$abc=$deptid."_fac_attorg";
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
				$sql3="SELECT name FROM `$abcd` WHERE sid = '$sid1' && dor IS NULL ";
				$result3 = $con->query($sql3);
			}	
			if ($result3->num_rows > 0) 
			{
				$row3 = $result3->fetch_assoc();
				for($i=1;$i<=$row1["attkey"];$i++)
				{		
					$ayear = $row1["ayear"];	
					$from = substr($ayear, 0, 4);	
					$to = substr($ayear, 5, 4);
					if (($from >= $from1) && ($to <= $to1) )
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
						$days = $row1["$attdays0"];
						if($row1["$attcategory0"]!= "fdp" && $row1["$attcategory0"]!= "seminar" && $row1["$attcategory0"]!= "workshop")
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
				echo $row1["ayear"];
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row1["$attcategory0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$atttitle0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$attorg0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$attdays0"];
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo "--";
				}
				else
				{
				echo $row1["$attfrom0"];
				}
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo "--";
				}
				else
				{
				echo $row1["$attto0"];
				}
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo $row1["$attdate0"];
				}
				else
				{
				echo "--";
				}
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$attlevel0"];
				echo'</center></TD>';
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
----------THE Third FUNCTION STARTS FROM HERE . This is used for attend program all  category---------
function tab2($deptid,$to1,$from1,$cat,$sid,$qual)
{
	include("../../../conn/config.php");
	$abc=$deptid."_fac_attorg";
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
				$sql3="SELECT name FROM `$abcd` WHERE sid = '$sid1' && dor IS NULL ";
				$result3 = $con->query($sql3);
			}	
			if ($result3->num_rows > 0) 
			{
				$row3 = $result3->fetch_assoc();
				for($i=1;$i<=$row1["attkey"];$i++)
				{		
					$ayear = $row1["ayear"];	
					$from = substr($ayear, 0, 4);	
					$to = substr($ayear, 5, 4);
					if (($from >= $from1) && ($to <= $to1) )
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
				$days = $row1["$attdays0"];	
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
				echo $row1["ayear"];
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row1["$attcategory0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$atttitle0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$attorg0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$attdays0"];
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo "--";
				}
				else
				{
				echo $row1["$attfrom0"];
				}
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo "--";
				}
				else
				{
				echo $row1["$attto0"];
				}
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo $row1["$attdate0"];
				}
				else
				{
				echo "--";
				}
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$attlevel0"];
				echo'</center></TD>';
							?>							
						</TR>
					<?php
					}
				}	
			}	
		}
	}
}*/ 
/* -------- The if condn starts from here . --------- */
if($cat=='all' || $cat=='dept' || $cat=='in')
{
	if($cat=='all')
	{
		$sql="SELECT deptid FROM dept";
		$result=mysqli_query($con,$sql);				
		?>
		
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TH>Staff ID </TH>
				<TH>Name</TH>
				<TH>Department</TH>
				<TH>Academic Year</TH>
				<TH>Name of the Society</TH>
				<TH>Membership ID</TH>
				<TH>Validity</TH>
			</TR>
			
			<?php
			while($row = $result->fetch_assoc()) 
			{
				$sid = 0;
				$deptid=$row['deptid'];
				
					tab($deptid,$cat,$sid,$qual);
				
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
		
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TH>Staff ID </TH>
				<TH>Name</TH>
				<TH>Academic Year</TH>
				<TH>Name of the Society</TH>
				<TH>Membership ID</TH>
				<TH>Validity</TH>
			</TR>
			
			<?php
				
					tab($deptid,$cat,$sid,$qual);
				
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
		
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TH>Academic Year</TH>
				<TH>Name of the Society</TH>
				<TH>Membership ID</TH>
				<TH>Validity</TH>
			</TR>			
			<?php
			
					tab($deptid,$cat,$sid,$qual);
				
			?>			
		</TABLE>		
		<?php
	}
}
else
{
	echo '<script language="javascript">alert("Select anyone option from ALL , DEPARTMENT , INDIVIDUAL");</script>';
	echo '<script type="text/javascript">window.location.href = "faculty_atten.php";</script>';
}
?>	
