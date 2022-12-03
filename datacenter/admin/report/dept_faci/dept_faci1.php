<?php
session_start();
include("../../../conn/config1.php");
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
/*----------THE First FUNCTION STARTS FROM HERE . This is used for displaying attend progarm with all  category---------*/ 
function tab($deptid,$to1,$from1,$cat,$qual)
{
	include("../../../conn/config1.php");
	$abc=$deptid."_faci";
	
		$sql2="SELECT * FROM `$abc`";
		$result2 = $con->query($sql2);			
		
	if ($result2->num_rows > 0) 
	{
		while($row1 = $result2->fetch_assoc()) 
		{
					
					$year = $row1["year"];
					if (($year >= $from1) && ($year <= $to1) )
					{
						
							if($cat=='all')
							{
							?>
								<TD><?php echo $deptid;?></TD>
							<?php
							}
							if($qual!="gen")
							{
								echo'<TD><center>';
								echo $row1["l_name"];
								echo '</center></TD>';
							}
							echo'<TD><center>';
							echo $row1["name"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["model"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["year"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["price"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["quantity"];
							echo'</center></TD>';
							?>							
						</TR>
						<?php
					}
		}
					
				
		
	}
}
/*----------THE Second FUNCTION STARTS FROM HERE . This is used fordisplaying attend program  with gen category---------*/ 
function tab1($deptid,$to1,$from1,$cat,$qual)
{
		include("../../../conn/config1.php");
	$abc=$deptid."_faci";
	
		$sql2="SELECT * FROM `$abc` WHERE type != 'gen'";
		$result2 = $con->query($sql2);			
		
	if ($result2->num_rows > 0) 
	{
		while($row1 = $result2->fetch_assoc()) 
		{
					
					$year = $row1["year"];
					if (($year >= $from1) && ($year <= $to1) )
					{
						
							if($cat=='all')
							{
							?>
								<TD><?php echo $deptid;?></TD>
							<?php
							}
							echo'<TD><center>';
							echo $row1["l_name"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["name"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["model"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["year"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["price"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["quantity"];
							echo'</center></TD>';
							?>							
						</TR>
						<?php
					}
		}
					
				
		
	}
}
/*----------THE Third FUNCTION STARTS FROM HERE . This is used for attend program all  category---------*/ 
function tab2($deptid,$to1,$from1,$cat,$qual)
{
	include("../../../conn/config1.php");
	$abc=$deptid."_faci";
	
		$sql2="SELECT * FROM `$abc` WHERE type='gen'";
		$result2 = $con->query($sql2);			
		
	if ($result2->num_rows > 0) 
	{
		while($row1 = $result2->fetch_assoc()) 
		{
					
					$year = $row1["year"];
					if (($year >= $from1) && ($year <= $to1) )
					{
						
							if($cat=='all')
							{
							?>
								<TD><?php echo $deptid;?></TD>
							<?php
							}
							
							echo'<TD><center>';
							echo $row1["name"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["model"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["year"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["price"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["quantity"];
							echo'</center></TD>';
							?>							
						</TR>
						<?php
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
		<div align="right">
			<form action="dept_faci2.php" method="post">
				<input type="hidden" name="from" value="<?php echo $from1; ?>">
				<input type="hidden" name="to" value="<?php echo $to1; ?>">
				<input type="hidden" name="cat" value="<?php echo $cat; ?>">
				<input type="hidden" name="type" value="<?php echo $type; ?>">
				<input type="hidden" name="qual" value="<?php echo $qual; ?>">
				<button>
					<img width="50px" height="50px" src="../../../images/word.png">
				</button>
			</form><br>
		</div>
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
			<TH>Depatrment</TH>
			<?php
			if($qual!="gen")
							{?>
								<TH>Lab Name</TH>
						<?php	}?>
				
			<TH>Name of the Equipment</TH>
			<TH>Model</TH>
			<TH>Year </TH>
			<TH>Price </TH>
			<TH>Quantity </TH>
			</TR>
			
			<?php
			while($row = $result->fetch_assoc()) 
			{
				$sid = 0;
				$deptid=$row['deptid'];
				if($qual=='gen')
				{
					tab2($deptid,$to1,$from1,$cat,$qual);
				}
				if($qual=='lab')
				{
					tab1($deptid,$to1,$from1,$cat,$qual);
				}
				if($qual=='all')
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
		<div align="right">
			<form action="dept_faci2.php" method="post">
				<input type="hidden" name="from" value="<?php echo $from1; ?>">
				<input type="hidden" name="to" value="<?php echo $to1; ?>">
				<input type="hidden" name="cat" value="<?php echo $cat; ?>">
				<input type="hidden" name="qual" value="<?php echo $qual; ?>">
				<input type="hidden" name="type" value="<?php echo $type; ?>">
				<input type="hidden" name="dept" value="<?php echo $deptid; ?>">
				<button>
					<img width="50px" height="50px" src="../../../images/word.png">
				</button>
			</form><br>
		</div>
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<?php
			if($qual!="gen")
							{?>
								<TH>Lab Name</TH>
						<?php	}?>
				
			<TH>Name of the Equipment</TH>
			<TH>Model</TH>
			<TH>Year </TH>
			<TH>Price </TH>
			<TH>Quantity </TH>
			</TR>
			
			<?php
				if($qual=='gen')
				{
					tab2($deptid,$to1,$from1,$cat,$qual);
				}
				if($qual=='lab')
				{
					tab1($deptid,$to1,$from1,$cat,$qual);
				}
				if($qual=='all')
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
	echo '<script type="text/javascript">window.location.href = "dept_fac_aca.php";</script>';
}
?>	
