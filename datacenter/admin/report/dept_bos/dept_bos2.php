<?php
include("../../../conn/config1.php");
header("Content-type: application/vnd.ms-word");
header("Content-Disposition: attachment;Filename=det_bos.doc");    
echo "<html>";
echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=Windows-1252\">";
echo "<body>";
?>
<p align="center"><b>ADHIYAMAAN COLLEGE OF ENGINEERING (Autonomous)</b></p>
<hr>
<?php
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
	echo '<script type="text/javascript">window.location.href = "dept_bos1.php";</script>';
}
?>
