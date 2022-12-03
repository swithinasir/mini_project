<style>
th, td {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
	 background-color: #f2f2f2;
}
</style>
<?php
session_start();
include("../../conn/config.php");
$from=$_POST['from'];
$to=$_POST['to'];
$text2 = "-06";
$text4 = "-06-01";
$from = $from.$text2;
$from1 = Date($from);
$from = $from.$text4;
$from2 = Date($from);
$text3 = "-05";
$text5 = "-05-01";
$to = $to.$text3;
$to1 = Date($to);
$to = $to.$text5;
$to2 = Date($to);
$cat=$_POST['cat'];
function tab1($deptid,$to1,$from1,$cat,$sid)
{
	
	include("../../conn/config.php");
		$abcd=$deptid."_fac";
			if($cat=='in')
		    {
				$sid1=$sid;
				$sql3="SELECT * FROM `$abcd` WHERE sid = '$sid1'";
				$result2 = $con->query($sql3);
			}
			else
			{
				$sql3="SELECT * FROM `$abcd` WHERE  doj < '$to1' && dor > '$from1' || dor IS NULL && doj < '$to1'";
				$result2 = $con->query($sql3);
			}	
	if ($result2->num_rows > 0) 
	{
		while($row2 = $result2->fetch_assoc()) 
		{
			$tdiff=0;
			$abc=$deptid."_fac_exp";
			if($cat=='in')
			{
				$sql2="SELECT * FROM `$abc` WHERE sid = '$sid'";
				$result3 = $con->query($sql2);
			}
			else
			{
				$sid1=$row2["sid"];
				$sql2="SELECT * FROM `$abc` WHERE sid = '$sid1'";
				$result3 = $con->query($sql2);			
			}	
			
			if ($result3->num_rows > 0) 
			{
				$row1 = $result3->fetch_assoc();
					?>
						<TR>
							<?php
							if($cat!='in')
							{
							?>
							<TD><?php echo $row2["sid"];?></TD>
							<TD><?php echo $row2["name"] ;?></TD>
							<?php
							}
							if($cat=='all')
							{
							?>
								<TD><?php echo $deptid;?></TD>
							<?php
							}
							echo'<TD><center>';							
					$today = date("y-m-d");
					$doj = $row2["doj"];
					$diff = abs(strtotime($doj) - strtotime($today));
					$tdiff=$diff+$tdiff;
					$years = floor($diff / (365*60*60*24));
					$months = floor(($diff - $years * 365*60*60*24) / (30*60*60*24));
					$days = floor(($diff - $years * 365*60*60*24 - $months*30*60*60*24)/ (60*60*24));
					printf("%d years, %d months, %d days\n", $years, $months, $days);
				echo '</center></TD>';
				echo'<TD><center>';
					$diff=0;
					if($row1["clgkey"]!='NULL')
					{
					for( $i=1; $i<=$row1["clgkey"];$i++)
					{
					$clgdoj0="clgdoj".$i;
					$clgdor0="clgdor".$i;
					$date1 = $row1["$clgdoj0"];
					$date2 = $row1["$clgdor0"];
					$a = abs(strtotime($date2) - strtotime($date1));
					$diff=$diff+$a;
					$tdiff=$diff+$tdiff;
					}
					}
					$years = floor($diff / (365*60*60*24));
					$months = floor(($diff - $years * 365*60*60*24) / (30*60*60*24));
					$days = floor(($diff - $years * 365*60*60*24 - $months*30*60*60*24)/ (60*60*24));
					printf("%d years, %d months, %d days\n", $years, $months, $days);
					
					
				echo '</center></TD>';
				echo'<TD><center>';
					$diff=0;
					if($row1["polkey"]!='NULL')
					{
					for( $i=1; $i<=$row1["polkey"];$i++)
					{
					$poldoj0="poldoj".$i;
					$poldor0="poldor".$i;
					$date1 = $row1["$poldoj0"];
					$date2 = $row1["$poldor0"];
					$a = abs(strtotime($date2) - strtotime($date1));
					$diff=$diff+$a;
					$tdiff=$diff+$tdiff;
					}
					}
					$years = floor($diff / (365*60*60*24));
					$months = floor(($diff - $years * 365*60*60*24) / (30*60*60*24));
					$days = floor(($diff - $years * 365*60*60*24 - $months*30*60*60*24)/ (60*60*24));
					printf("%d years, %d months, %d days\n", $years, $months, $days);
				echo '</center></TD>';
				echo'<TD><center>';
					$diff=0;
					if($row1["schkey"]!='NULL' )
					{
					for( $i=1; $i<=$row1["schkey"];$i++)
					{
					$schdoj0="schdoj".$i;
					$schdor0="schdor".$i;
					$date1 = $row1["$schdoj0"];
					$date2 = $row1["$schdor0"];
					$a = abs(strtotime($date2) - strtotime($date1));
					$diff=$diff+$a;
					$tdiff=$diff+$tdiff;
					}
					}
					$years = floor($diff / (365*60*60*24));
					$months = floor(($diff - $years * 365*60*60*24) / (30*60*60*24));
					$days = floor(($diff - $years * 365*60*60*24 - $months*30*60*60*24)/ (60*60*24));
					printf("%d years, %d months, %d days\n", $years, $months, $days);
				echo '</center></TD>';
				echo'<TD><center>';
					$diff=0;
					if($row1["indkey"]!='NULL' )
					{
					for( $i=1; $i<=$row1["indkey"];$i++)
					{
					$inddoj0="inddoj".$i;
					$inddor0="inddor".$i;
					$date1 = $row1["$inddoj0"];
					$date2 = $row1["$inddor0"];
					$a = abs(strtotime($date2) - strtotime($date1));
					$diff=$diff+$a;
					$tdiff=$diff+$tdiff;
					}
					}
					$years = floor($diff / (365*60*60*24));
					$months = floor(($diff - $years * 365*60*60*24) / (30*60*60*24));
					$days = floor(($diff - $years * 365*60*60*24 - $months*30*60*60*24)/ (60*60*24));
					printf("%d years, %d months, %d days\n", $years, $months, $days);
				echo '</center></TD>';
				echo'<TD><center>';
					$years = floor($tdiff / (365*60*60*24));
					$months = floor(($tdiff - $years * 365*60*60*24) / (30*60*60*24));
					$days = floor(($tdiff - $years * 365*60*60*24 - $months*30*60*60*24)/ (60*60*24));
					printf("%d years, %d months, %d days\n", $years, $months, $days);
				echo '</center></TD>';
		echo'</TR>';
					
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

		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TH>Staff ID </TH>
				<TH>Name</TH>
				<TH>Department</TH>
				<TH>InHouse</TH>
				<TH>Other College</TH>
				<TH>Politechnic</TH>
				<TH>School</TH>
				<TH>Industry</TH>
				<TH>Total</TH>
			</TR>			
			<?php
			while($row = $result->fetch_assoc()) 
			{
				$sid = 0;
				$deptid=$row['deptid'];
				tab1($deptid,$to2,$from2,$cat,$sid);
			}
			?>
			
		</TABLE>
		
		<?php
		
	}
	if($cat=='dept')
	{
			$sid = 0;
			$deptid=$_SESSION['deptid'];	
			echo "<br>";
			echo "<b>DEPARTMENT</b> : <i>",$deptid,"</i>";
			?>

			<TABLE id="dataTable" width="100%" border="1">
				<TR>
					<TH>Staff ID </TH>
					<TH>Name</TH>
					<TH>InHouse</TH>
					<TH>Other College</TH>
					<TH>Politechnic</TH>
					<TH>School</TH>
					<TH>Industry</TH>
					<TH>Total</TH>
				</TR>

				<?php
				tab1($deptid,$to2,$from2,$cat,$sid);
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
					<TH>InHouse</TH>
					<TH>Other College</TH>
					<TH>Politechnic</TH>
					<TH>School</TH>
					<TH>Industry</TH>
					<TH>Total</TH>
				</TR>

				<?php
				tab1($deptid,$to2,$from2,$cat,$sid);
				?>
			
			</TABLE>
			
			<?php		
	}
}
else
{
	echo '<script language="javascript">alert("Select anyone option from ALL , DEPARTMENT , INDIVIDUAL");</script>';
	echo '<script type="text/javascript">window.location.href = "faculty_info.php";</script>';
}
?>	