<?php
session_start();
include("../../../conn/config1.php");
$n_bos=$_POST['n_bos'];
$cat=$_POST['cat'];
/*----------THE First FUNCTION STARTS FROM HERE . This is used for displaying attend progarm with all  category---------*/ 
function tab($deptid,$n_bos,$cat)
{
	include("../../../conn/config1.php");
	$abc=$deptid."_bos";
	
		$sql2="SELECT * FROM `$abc` WHERE n_bos='$n_bos'";
		$result2 = $con->query($sql2);			
		
	if ($result2->num_rows > 0) 
	{
		while($row1 = $result2->fetch_assoc()) 
		{
			
			$bid=$row1["id"];
			$abcd=$deptid."_bos_mem";
			$sql3="SELECT * FROM `$abcd` WHERE bid='$bid'";
			$result3 = $con->query($sql3);
			if ($result3->num_rows > 0) 
			{?>
				<TR>
					<?php
					if($cat == "all"){
					?>
						<TD rowspan="<?php echo $result3->num_rows+1 ?>">
							<?php echo $deptid ?>
						</TD>
					<?php } ?>	
						<TD rowspan="<?php echo $result3->num_rows+1 ?>">
							<?php echo $row1["ayear"] ?>
						</TD>
						<TD rowspan="<?php echo $result3->num_rows+1 ?>">
							<?php							
							$d=Date("d-m-Y",strtotime($row1["date"])); 
							echo $d ?>
							
						</TD>
						<TD rowspan="<?php echo $result3->num_rows+1 ?>">
							<?php echo $row1["n_bos"] ?>
						</TD>
						
				</TR>		
				<?php		
				while($row3 = $result3->fetch_assoc()) 
				{?>			
					<TR>
							
						
						<TD>
							<?php echo $row3["name"] ?>
						</TD>
						<TD>
							<?php echo $row3["desig"] ?>
						</TD>
						<TD>
							<?php echo $row3["adde"] ?> 
						</TD>
						<TD>
							<?php echo $row3["cate"] ?>
						</TD>
					</TR>
		<?php	}
					
				
		
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
			<form action="dept_bos2.php" method="post">
				<input type="hidden" name="n_bos" value="<?php echo $n_bos; ?>">
				<input type="hidden" name="cat" value="<?php echo $cat; ?>">
				<button>
					<img width="50px" height="50px" src="../../../images/word.png">
				</button>
			</form><br>
		</div>
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
			<TH>Depatrment</TH>
			<TH>Academic Year</TH>
			<TH>Date</TH>
			<TH>BOS Meeting </TH>
			<TH>Name of the Member </TH>
			<TH>Designation </TH>
			<TH>Address</TH>
			<TH>Category </TH>
			</TR>
			
			<?php
			while($row = $result->fetch_assoc()) 
			{
				$sid = 0;
				$deptid=$row['deptid'];
				
					tab($deptid,$n_bos,$cat);
				
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
			<form action="dept_bos2.php" method="post">
				<input type="hidden" name="n_bos" value="<?php echo $n_bos; ?>">
				<input type="hidden" name="cat" value="<?php echo $cat; ?>">
				<input type="hidden" name="dept" value="<?php echo $deptid; ?>">
				<button>
					<img width="50px" height="50px" src="../../../images/word.png">
				</button>
			</form><br>
		</div>
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
			<TH>Academic Year</TH>
			<TH>Date</TH>
			<TH>BOS Meeting</TH>
			<TH>Name of the Member </TH>
			<TH>Designation </TH>
			<TH>Address</TH>
			<TH>Category </TH>
			</TR>
			
			<?php
				
					tab($deptid,$n_bos,$cat);
				
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
