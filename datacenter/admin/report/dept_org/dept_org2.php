<?php
include("../../../conn/config1.php");
header("Content-type: application/vnd.ms-word");
header("Content-Disposition: attachment;Filename=faculty_info.doc");    
echo "<html>";
echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=Windows-1252\">";
echo "<body>";
?>
<p align="center"><b>ADHIYAMAAN COLLEGE OF ENGINEERING (Autonomous)</b></p>
<hr>
<?php
$type=$_POST['type'];
if($type=="aca")
{
	$ayear = $_POST["ayear"];	
	$from1 = substr($ayear, 0, 4);	
	$to1 = substr($ayear, 5, 4);
}
else
{
	$from1=$_POST['from'];
	$to1=$_POST['to'];
}
$cat=$_POST['cat'];
$qual=$_POST['qual'];
/*----------THE First FUNCTION STARTS FROM HERE . This is used for displaying attend progarm with listed  category---------*/ 
function tab($deptid,$to1,$from1,$cat,$qual)
{
	include("../../../conn/config1.php");
	$abc=$deptid."_org";
	
		$sql2="SELECT * FROM `$abc`";
		$result2 = $con->query($sql2);			
		
	if ($result2->num_rows > 0) 
	{
		while($row1 = $result2->fetch_assoc()) 
		{
			
			
				for($i=1;$i<=$row1["orgkey"];$i++)
				{		
					$ayear = $row1["ayear"];	
					$from = substr($ayear, 0, 4);	
					$to = substr($ayear, 5, 4);
					if (($from >= $from1) && ($to <= $to1) )
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
						$orgcer0="orgcer".$i;
						$days = $row1["$orgdays0"];
						?>
						<TR>
						<?php
						if($qual==$row1["$orgcategory0"])
						{							
							
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
				echo $row1["$orgcategory0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$orgtitle0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$orgfun0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$orgdays0"];
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo "--";
				}
				else
				{
				echo $row1["$orgfrom0"];
				}
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo "--";
				}
				else
				{
				echo $row1["$orgto0"];
				}
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo $row1["$orgdate0"];
				}
				else
				{
				echo "--";
				}
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$orgres0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$orgpar0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$orglevel0"];
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
/*----------THE Second FUNCTION STARTS FROM HERE . This is used fordisplaying attend program  with Other category---------*/ 
function tab1($deptid,$to1,$from1,$cat,$qual)
{
	include("../../../conn/config1.php");
	$abc=$deptid."_org";
	
		$sql2="SELECT * FROM `$abc`";
		$result2 = $con->query($sql2);			
		
	if ($result2->num_rows > 0) 
	{
		while($row1 = $result2->fetch_assoc()) 
		{
				
			
				for($i=1;$i<=$row1["orgkey"];$i++)
				{		
					$ayear = $row1["ayear"];	
					$from = substr($ayear, 0, 4);	
					$to = substr($ayear, 5, 4);
					if (($from >= $from1) && ($to <= $to1) )
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
						$days = $row1["$orgdays0"];
						if($row1["$orgcategory0"]!= "fdp" && $row1["$orgcategory0"]!= "seminar" && $row1["$orgcategory0"]!= "workshop")
						{
						?>
						<TR>
							<?php
							
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
				echo $row1["$orgcategory0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$orgtitle0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$orgfun0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$orgdays0"];
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo "--";
				}
				else
				{
				echo $row1["$orgfrom0"];
				}
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo "--";
				}
				else
				{
				echo $row1["$orgto0"];
				}
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo $row1["$orgdate0"];
				}
				else
				{
				echo "--";
				}
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$orgres0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$orgpar0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$orglevel0"];
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
/*----------THE Third FUNCTION STARTS FROM HERE . This is used for attend program all  category---------*/ 
function tab2($deptid,$to1,$from1,$cat,$qual)
{
	include("../../../conn/config1.php");
	$abc=$deptid."_org";
	
		$sql2="SELECT * FROM `$abc`";
		$result2 = $con->query($sql2);			
		
	if ($result2->num_rows > 0) 
	{
		while($row1 = $result2->fetch_assoc()) 
		{
			
				for($i=1;$i<=$row1["orgkey"];$i++)
				{		
					$ayear = $row1["ayear"];	
					$from = substr($ayear, 0, 4);	
					$to = substr($ayear, 5, 4);
					if (($from >= $from1) && ($to <= $to1) )
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
				$days = $row1["$orgdays0"];	
						?>
						<TR>						
							<?php	
							
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
				echo $row1["$orgcategory0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$orgtitle0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$orgfun0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$orgdays0"];
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo "--";
				}
				else
				{
				echo $row1["$orgfrom0"];
				}
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo "--";
				}
				else
				{
				echo $row1["$orgto0"];
				}
				echo'</center></TD>';
				echo'<TD><center>';
				if($days==1)
				{
				echo $row1["$orgdate0"];
				}
				else
				{
				echo "--";
				}
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$orgres0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$orgpar0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row1["$orglevel0"];
				echo'</center></TD>';
							?>							
						</TR>
					<?php
					}
				}	
				
		}
	}
}
/* -------- The if condn starts from here . --------- */
if($cat=='all' || $cat=='dept')
{
	if($cat=='all')
	{
		$con1 = mysqli_connect("localhost", "root", "", "datacenter");
		$sql="SELECT deptid FROM dept";
		$result=mysqli_query($con1,$sql);				
		?>
		
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TH>Department</TH>
				<TH>Academic Year</TH>
			<TH>Name of the Program</TH>
			<TH>Title of the Program</TH>
			<TH>Funded By</TH>
			<TH>No.Of.Days</TH>
			<TH>From </TH>
			<TH>To </TH>
			<TH>Date </TH>
			<TH>Resource Person</TH>
			<TH>No. of Participants</TH>
			<TH>Level Of The Program</TH>
			</TR>
			
			<?php
			while($row = $result->fetch_assoc()) 
			{
				$sid = 0;
				$deptid=$row['deptid'];
				if($qual=='all')
				{
					tab2($deptid,$to1,$from1,$cat,$qual);
				}
				if($qual=='others')
				{
					tab1($deptid,$to1,$from1,$cat,$qual);
				}
				if($qual!='all' && $qual!='others')
				{
					tab($deptid,$to1,$from1,$cat,$qual);
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
		
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TH>Academic Year</TH>
			<TH>Name of the Program</TH>
			<TH>Title of the Program</TH>
			<TH>Funded By</TH>
			<TH>No.Of.Days</TH>
			<TH>From </TH>
			<TH>To </TH>
			<TH>Date </TH>
			<TH>Resource Person</TH>
			<TH>No. of Participants</TH>
			<TH>Level Of The Program</TH>
			</TR>
			
			<?php
				if($qual=='all')
				{
					tab2($deptid,$to1,$from1,$cat,$qual);
				}
				if($qual=='others')
				{
					tab1($deptid,$to1,$from1,$cat,$qual);
				}
				if($qual!='all' && $qual!='others')
				{
					tab($deptid,$to1,$from1,$cat,$qual);
				}
			?>			
		</TABLE>		
		<?php
	}
	
}
else
{
	echo '<script language="javascript">alert("Select anyone option from ALL , DEPARTMENT , INDIVIDUAL");</script>';
	echo '<script type="text/javascript">window.location.href = "dept_org_aca.php";</script>';
}
?>	
