<?php
session_start();
include("../../../conn/config.php");
$from=$_POST['from'];
$to=$_POST['to'];
$text2 = "-06";
$from = $from.$text2;
$from1 = Date($from);
$text3 = "-05";
$to = $to.$text3;
$to1 = Date($to);
$cat=$_POST['cat'];
/*----------THE First FUNCTION STARTS FROM HERE . This is used for book---------*/ 
function tab($deptid,$to1,$from1,$cat,$sid)
{
	include("../../../conn/config.php");
	$abc=$deptid."_fac_bkjrn";
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
				for($i=1;$i<=$row1["bkkey"];$i++)
				{		
					$ayear = $row1["ayear"];	
					$from = substr($ayear, 0, 4);	
					$to = substr($ayear, 5, 4);
					if (($from >= $from1) && ($to <= $to1) )
					{											
						$bk="bk".$i;
						$bkcha="bkcha".$i;
						$bkissn="bkissn".$i;
						$bkmy="bkmy".$i;
						$bkpup="bkpup".$i;
						$bktype="bktype".$i;
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
							echo $row1["$bk"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$bkcha"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$bkissn"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$bkmy"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$bkmy"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$bktype"] ;
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
			<form action="faculty_spon_prgm2.php" method="post">
				<input type="hidden" name="from" value="<?php echo $from1; ?>">
				<input type="hidden" name="to" value="<?php echo $to1; ?>">
				<input type="hidden" name="cat" value="<?php echo $cat; ?>">
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
				<TH>Title of Bookt</TH>
				<TH>Title of Chapter</TH>
				<TH>ISSN/ISBN NO.</TH>
				<TH>Month/Year</TH>
				<TH>Name of The Publishier</TH>
				<TH>Type of The Publication</TH>
			</TR>
			
			<?php
			while($row = $result->fetch_assoc()) 
			{
				$sid = 0;
				$deptid=$row['deptid'];
				tab($deptid,$to1,$from1,$cat,$sid);
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
			<form action="faculty_spon_prgm2.php" method="post">
				<input type="hidden" name="from" value="<?php echo $from1; ?>">
				<input type="hidden" name="to" value="<?php echo $to1; ?>">
				<input type="hidden" name="cat" value="<?php echo $cat; ?>">
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
				<TH>Title of Bookt</TH>
				<TH>Title of Chapter</TH>
				<TH>ISSN/ISBN NO.</TH>
				<TH>Month/Year</TH>
				<TH>Name of The Publishier</TH>
				<TH>Type of The Publication</TH>
			</TR>
			
			<?php
					tab($deptid,$to1,$from1,$cat,$sid);
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
			<form action="faculty_spon_prgm2.php" method="post">
				<input type="hidden" name="from" value="<?php echo $from1; ?>">
				<input type="hidden" name="to" value="<?php echo $to1; ?>">
				<input type="hidden" name="cat" value="<?php echo $cat; ?>">
					<input type="hidden" name="sid" value="<?php echo $sid; ?>">
				<button>
					<img width="50px" height="50px" src="../../../images/word.png">
				</button>
			</form><br>
		</div>
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TH>Academic Year</TH>
				<TH>Title of Bookt</TH>
				<TH>Title of Chapter</TH>
				<TH>ISSN/ISBN NO.</TH>
				<TH>Month/Year</TH>
				<TH>Name of The Publishier</TH>
				<TH>Type of The Publication</TH>
			</TR>			
			<?php
					tab($deptid,$to1,$from1,$cat,$sid);
			?>			
		</TABLE>		
		<?php
	}
}
else
{
	echo '<script language="javascript">alert("Select anyone option from ALL , DEPARTMENT , INDIVIDUAL");</script>';
	echo '<script type="text/javascript">window.location.href = "faculty_spon_prgm.php";</script>';
}
?>	
