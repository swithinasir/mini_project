<?php
header("Content-type: application/vnd.ms-word");
header("Content-Disposition: attachment;Filename=dinamic_Report.doc");    
echo "<html>";
echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=Windows-1252\">";
echo "<body>";
?>
<p align="center"><b>ADHIYAMAAN COLLEGE OF ENGINEERING (Autonomous)</b></p>
<hr>
<?php
include("../../../conn/config.php");

$cat=$_POST['cat'];
//$type=$_POST['type'];
//echo "",$_POST['type'];

function tab1($deptid,$cat,$sid,Array $type)
{
	
	include("../../../conn/config.php");
	
	
			$abcd=$deptid."_fac";
			if($cat=='in')
		    {
				$sid1=$sid;
				$sql3="SELECT * FROM `$abcd` WHERE sid = '$sid1' && doj < '$to2' && dor > '$from2' || dor IS NULL && doj < '$to2'";
				$result3 = $con->query($sql3);
			}
			else
			{
				$sql3="SELECT * FROM `$abcd`";
				$result3 = $con->query($sql3);
			}
			
			
			
				while($row1 = $result3->fetch_assoc())
				{
					$research_project=0;
					$book=0;
					$jrn=0;
					$connf=0;
					$atten=0;
					$workshop_att=0;
					$seminar_att=0;
					$fdp_att=0;
					$sdp_att=0;
					$training_att=0;
					$summerorwinter_att=0;
					$org=0;
					$sch=0;
					$awa=0;
					$mem=0;
				?>
						<TR>
							<?php
							if($cat!='in')
							{
							?>
							<TD><?php echo $row1["sid"];?></TD>
							<?php
							}	
							?>						
							<TD><?php echo $row1["name"] ;?></TD>
							<?php
							if($cat=='all')
							{
							?>
								<TD><?php echo $deptid;?></TD>
							<?php
							}				
	if(in_array("dob", $type) ){
							echo'<TD><center>';
							$dob=Date("d-m-Y",strtotime($row1["dob"])); 
							echo $dob;
							echo '</center></TD>';
							}
	if(in_array("doj", $type)){		
							echo'<TD><center>';
							$doj=Date("d-m-Y",strtotime($row1["doj"]));
							echo $doj;
							echo '</center></TD>';
	}
	if(in_array("community", $type)){				
							echo'<TD><center>';
							echo $row1["comunity"] ;
							echo '</center></TD>';
	}
	if(in_array("gender", $type)){
							echo'<TD><center>';
							echo $row1["gender"] ;
							echo '</center></TD>';
	}
	if(in_array("mobile", $type)){					
							echo'<TD><center>';
							echo $row1["mob1"] ;
							echo '</center></TD>';
	}
	if(in_array("aadhar", $type)){					
							echo'<TD><center>';
							echo $row1["aadharno"] ;
							echo '</center></TD>';
	}
	if(in_array("mail", $type)){					
							echo'<TD><center>';
							echo $row1["email"] ;
							echo '</center></TD>';
	}
	if(in_array("google", $type)){					
							echo'<TD><center>';
                            $sid1=$row1["sid"];
							$abc=$deptid."_fac_bkjrn";
							$sql4="SELECT * FROM `$abc` WHERE sid = '$sid1' && gl IS NOT NULL";
							$result4 = $con->query($sql4);
							
							if($result4->num_rows > 0)
							{
								$row2 = $result4->fetch_assoc();
							?>
							<a href="<?php echo $row2["gl"]; ?>" target="_blank" ><?php echo $row2["gl"] ;?></a>
							<?php
							}
							else
							{	
							echo"--";
							}
							echo '</center></TD>';
	}
	if(in_array("exp", $type)){	
							echo'<TD><center>';
							 
							$sid1=$row1["sid"];
							$aaa21=$deptid."_fac_exp";
							$sql51="SELECT * FROM `$aaa21` WHERE sid = '$sid1'";
							$result51 = $con->query($sql51);
							if($result51->num_rows > 0) 
							{
								$tdiff=0;
								while($row51 = $result51->fetch_assoc()) 
								{
									$diff=0;
									if($row51["clgkey"]!='NULL')
									{
									for( $i=1; $i<=$row51["clgkey"];$i++)
									{
									$clgdoj0="clgdoj".$i;
									$clgdor0="clgdor".$i;
									$date1 = $row51["$clgdoj0"];
									$date2 = $row51["$clgdor0"];
									$a = abs(strtotime($date2) - strtotime($date1));
									$diff=$diff+$a;
									}
									$tdiff=$diff+$tdiff;
									}
					
									$diff=0;
									if($row51["polkey"]!='NULL')
									{
									for( $i=1; $i<=$row51["polkey"];$i++)
									{
									$poldoj0="poldoj".$i;
									$poldor0="poldor".$i;
									$date1 = $row51["$poldoj0"];
									$date2 = $row51["$poldor0"];
									$a = abs(strtotime($date2) - strtotime($date1));
					$diff=$diff+$a;
					}
					$tdiff=$diff+$tdiff;
					}
					
					$diff=0;
					if($row51["schkey"]!='NULL' )
					{
					for( $i=1; $i<=$row51["schkey"];$i++)
					{
					$schdoj0="schdoj".$i;
					$schdor0="schdor".$i;
					$date1 = $row51["$schdoj0"];
					$date2 = $row51["$schdor0"];
					$a = abs(strtotime($date2) - strtotime($date1));
					$diff=$diff+$a;
					}
					$tdiff=$diff+$tdiff;
					}
					
					$diff=0;
					if($row51["indkey"]!='NULL' )
					{
					for( $i=1; $i<=$row51["indkey"];$i++)
					{
					$inddoj0="inddoj".$i;
					$inddor0="inddor".$i;
					$date1 = $row51["$inddoj0"];
					$date2 = $row51["$inddor0"];
					$a = abs(strtotime($date2) - strtotime($date1));
					$diff=$diff+$a;
					}
					$tdiff=$diff+$tdiff;
					}
					
					$diff=0;
					if($row51["otkey"]!='NULL' )
					{
					for( $i=1; $i<=$row51["otkey"];$i++)
					{
					$otdoj0="otdoj".$i;
					$otdor0="otdor".$i;
					$date1 = $row51["$otdoj0"];
					$date2 = $row51["$otdor0"];
					$a = abs(strtotime($date2) - strtotime($date1));
					$diff=$diff+$a;
					}
					$tdiff=$diff+$tdiff;
					}
					
					$today1 = date("y-m-d");
					$doj1 = $row1["doj"];
					$a = abs(strtotime($doj1) - strtotime($today1));
					$tdiff=$a+$tdiff;
									
					$years = floor($tdiff / (365*60*60*24));
					$months = floor(($tdiff - $years * 365*60*60*24) / (30*60*60*24));
					$days = floor(($tdiff - $years * 365*60*60*24 - $months*30*60*60*24)/ (60*60*24));
					printf("%d . %d years", $years, $months);
				
								}
							}
							else
							{
								$today1 = date("y-m-d");
								$doj1 = $row1["doj"];
								$diff1 = abs(strtotime($doj1) - strtotime($today1));	
								$years1 = floor($diff1 / (365*60*60*24));
								$months1 = floor(($diff1 - $years1 * 365*60*60*24) / (30*60*60*24));
								$days1 = floor(($diff1 - $years1 * 365*60*60*24 - $months1*30*60*60*24)/ (60*60*24));
								printf("%d . %d years", $years1, $months1);
							}
							echo '</center></TD>';	
	}	
	if(in_array("inexp", $type)){	
							echo'<TD><center>';
							 
				$today1 = date("y-m-d");
				$doj1 = $row1["doj"];
				$diff1 = abs(strtotime($doj1) - strtotime($today1));	
				$years1 = floor($diff1 / (365*60*60*24));
				$months1 = floor(($diff1 - $years1 * 365*60*60*24) / (30*60*60*24));
				$days1 = floor(($diff1 - $years1 * 365*60*60*24 - $months1*30*60*60*24)/ (60*60*24));
							printf("%d . %d years", $years1, $months1);
							echo '</center></TD>';	
	}	
	if(in_array("Funded", $type)){	
							echo'<TD><center>';
                            $sid1=$row1["sid"];
							$aaa2=$deptid."_fac_funpat";
							$sql5="SELECT * FROM `$aaa2` WHERE sid = '$sid1'";
							$result5 = $con->query($sql5);
							if($result5->num_rows > 0) 
							{
								while($row5 = $result5->fetch_assoc()) 
								{			
									for( $i=1; $i<=$row5["funkey"];$i++)
									{
										$titleofpro0="titleofpro".$i;
										if($row5["$titleofpro0"] != NULL)
										{
											$research_project=$research_project+1;
										}
									}
								}
							}
							
							echo $research_project;
							echo '</center></TD>';
	}
	if(in_array("book", $type)){								
							echo'<TD><center>';
							$sid=$row1["sid"];
                            $aaa6=$deptid."_fac_bkjrn";
							$sql6="SELECT * FROM `$aaa6` WHERE sid = '$sid'";
							$result6 = $con->query($sql6);
							if($result6->num_rows > 0)
							{
								while($row6 = $result6->fetch_assoc()) 
								{								
										if($row6["bk1"] != NULL)
										{
											$book=$book+1;
										}									
								}
							}
							echo $book;
							echo '</center></TD>';
	}	
	if(in_array("journal", $type)){						
							echo'<TD><center>';
							$sid=$row1["sid"];
							$sid=$row1["sid"];
                           $aaa7=$deptid."_fac_bkjrn";
	$sql7="SELECT * FROM `$aaa7` WHERE sid = '$sid'";
	$result7 = $con->query($sql7);
	if($result7->num_rows > 0) 
	{
								while($row7 = $result7->fetch_assoc()) 
								{								
										if($row7["jrnname1"] != NULL)
										{
											$jrn=$jrn+1;
										}									
								}
							}
							echo $jrn;
							echo '</center></TD>';
	}	
	if(in_array("conf", $type)){					
							echo'<TD><center>';
							$sid=$row1["sid"];
                          $aaa8=$deptid."_fac_glc";
	$sql8="SELECT * FROM `$aaa8` WHERE sid = '$sid'";
	$result8 = $con->query($sql8);
	if($result8->num_rows > 0) 
	{
								while($row8 = $result8->fetch_assoc()) 
								{								
										if($row8["conname1"] != NULL)
										{
											$connf=$connf+1;
										}									
								}
							}
							echo $connf;
							echo '</center></TD>';
	}
	if(in_array("atten", $type)){						
							echo'<TD><center>';
							$sid=$row1["sid"];
                         $aaa9=$deptid."_fac_attorg";
	$sql9="SELECT * FROM `$aaa9` WHERE sid = '$sid'";
	$result9 = $con->query($sql9);
	if($result9->num_rows > 0) 
	{
								while($row9 = $result9->fetch_assoc()) 
								{								
										if($row9["attcategory1"] != NULL)
										{
											$atten=$atten+1;
										}									
								}
							}
							echo $atten;
							echo '</center></TD>';
	}	
	if(in_array("workshop_att", $type)){						
							echo'<TD><center>';
							$sid=$row1["sid"];
                         $aaa91=$deptid."_fac_attorg";
	$sql91="SELECT * FROM `$aaa91` WHERE sid = '$sid' ";
	$result91 = $con->query($sql91);
	if($result91->num_rows > 0) 
	{
								while($row91 = $result91->fetch_assoc()) 
								{								
										if($row91["attcategory1"] != NULL && $row91["attcategory1"] == "workshop")
										{
											$workshop_att=$workshop_att+1;
										}									
								}
							}
							echo $workshop_att;
							echo '</center></TD>';
	}	
	if(in_array("seminar_att", $type)){						
							echo'<TD><center>';
							$sid=$row1["sid"];
                         $aaa92=$deptid."_fac_attorg";
	$sql92="SELECT * FROM `$aaa92` WHERE sid = '$sid' ";
	$result92 = $con->query($sql92);
	if($result92->num_rows > 0) 
	{
								while($row92 = $result92->fetch_assoc()) 
								{								
										if($row92["attcategory1"] != NULL && $row92["attcategory1"] == "seminar")
										{
											$seminar_att=$seminar_att+1;
										}									
								}
							}
							echo $seminar_att;
							echo '</center></TD>';
	}	
	if(in_array("fdp_att", $type)){						
							echo'<TD><center>';
							$sid=$row1["sid"];
                         $aaa93=$deptid."_fac_attorg";
	$sql93="SELECT * FROM `$aaa93` WHERE sid = '$sid' ";
	$result93 = $con->query($sql93);
	if($result93->num_rows > 0) 
	{
								while($row93 = $result93->fetch_assoc()) 
								{								
										if($row93["attcategory1"] != NULL && $row93["attcategory1"] == "fdp")
										{
											$fdp_att=$fdp_att+1;
										}									
								}
							}
							echo $fdp_att;
							echo '</center></TD>';
	}	
		
	if(in_array("sdp_att", $type)){						
							echo'<TD><center>';
							$sid=$row1["sid"];
                         $aaa94=$deptid."_fac_attorg";
	$sql94="SELECT * FROM `$aaa94` WHERE sid = '$sid' ";
	$result94 = $con->query($sql94);
	if($result94->num_rows > 0) 
	{
								while($row94 = $result94->fetch_assoc()) 
								{								
										if($row94["attcategory1"] != NULL && $row94["attcategory1"] == "sdp")
										{
											$sdp_att=$sdp_att+1;
										}									
								}
							}
							echo $sdp_att;
							echo '</center></TD>';
	}	
		
	if(in_array("training_att", $type)){						
							echo'<TD><center>';
							$sid=$row1["sid"];
                         $aaa95=$deptid."_fac_attorg";
	$sql95="SELECT * FROM `$aaa95` WHERE sid = '$sid' ";
	$result95 = $con->query($sql95);
	if($result95->num_rows > 0) 
	{
								while($row95 = $result95->fetch_assoc()) 
								{								
										if($row95["attcategory1"] != NULL && $row95["attcategory1"] == "training")
										{
											$training_att=$training_att+1;
										}									
								}
							}
							echo $training_att;
							echo '</center></TD>';
	}	
		
	if(in_array("summerorwinter_att", $type)){						
							echo'<TD><center>';
							$sid=$row1["sid"];
                         $aaa96=$deptid."_fac_attorg";
	$sql96="SELECT * FROM `$aaa96` WHERE sid = '$sid' ";
	$result96 = $con->query($sql96);
	if($result96->num_rows > 0) 
	{
								while($row96 = $result96->fetch_assoc()) 
								{								
										if($row96["attcategory1"] != NULL && $row96["attcategory1"] == "summerorwinter")
										{
											$summerorwinter_att=$summerorwinter_att+1;
										}									
								}
							}
							echo $summerorwinter_att;
							echo '</center></TD>';
	}	
	if(in_array("org", $type) ){							
							echo'<TD><center>';
							$sid=$row1["sid"];
                         $aaa10=$deptid."_fac_attorg";
	$sql10="SELECT * FROM `$aaa10` WHERE sid = '$sid'";
	$result10 = $con->query($sql10);
	if($result10->num_rows > 0) 
	{
								while($row10 = $result10->fetch_assoc()) 
								{								
										if($row10["orgcategory1"] != NULL)
										{
											$org=$org+1;
										}									
								}
							}
							echo $org;
							echo '</center></TD>';
	}	
	if(in_array("sch", $type)){							
							echo'<TD><center>';
							$sid=$row1["sid"];
                        $aaa12=$deptid."_fac_resg";
	$sql12="SELECT * FROM `$aaa12` WHERE sid = '$sid'";
	$result12 = $con->query($sql12);
	if($result12->num_rows > 0) 
	{
								while($row12 = $result12->fetch_assoc()) 
								{								
										if($row12["reg"] != NULL)
										{
											$sch=$sch+1;
										}									
								}
							}
							echo $sch;
							echo '</center></TD>';
	}
	if(in_array("awa", $type) ){							
							echo'<TD><center>';
							$sid=$row1["sid"];
                       $aaa13=$deptid."_fac_member";
	$sql13="SELECT * FROM `$aaa13` WHERE sid = '$sid'";
	$result13 = $con->query($sql13);
	if($result13->num_rows > 0) 
	{
								while($row13 = $result13->fetch_assoc()) 
								{								
										if($row13["aname1"] != NULL)
										{
											$awa=$awa+1;
										}									
								}
							}
							echo $awa;
							echo '</center></TD>';
	}	
	if(in_array("mem", $type) ){							
							echo'<TD><center>';
							$sid=$row1["sid"];
                       $aaa131=$deptid."_fac_member";
					   $sql131="SELECT DISTINCT name1 FROM `$aaa131` WHERE sid = '$sid' AND name1 IS NOT NULL";
	$result131 = $con->query($sql131);
	echo $result131->num_rows;
							echo '</center></TD>';
	}							
					echo'</TR>';	
						
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
				<?php
				foreach($_POST['type'] as $a) {					
				if($a == "dob" ){ ?>
				<TH>Date Of Birth</TH>	
				<?php } ?>
				<?php if($a == "doj"){ ?>
				<TH>Date of Joining</TH>	
				<?php } ?>
				<?php if($a == "community"){ ?>
				<TH>Community</TH>	
				<?php } ?>	
				<?php if($a == "gender"){ ?>				
				<TH>Gender</TH>
				<?php } ?>	
				<?php if($a == "mobile"){ ?>		
				<TH>Mobile Number</TH>
				<?php } ?>	
				<?php if($a == "aadhar"){ ?>		
				<TH>Aadhar Number</TH>
				<?php } ?>	
				<?php if($a == "mail"){ ?>		
				<TH>Email</TH>
				<?php } ?>	
				<?php if($a == "google"){ ?>		
				<TH>Google Link</TH>
				<?php } ?>	
				<?php if($a == "exp"){ ?>		
				<TH>Total Experience</TH>
				<?php } ?>	
				<?php if($a == "inexp"){ ?>		
				<TH>In-house Experience</TH>
				<?php } ?>	
				<?php if($a == "Funded"){ ?>		
				<TH>No.Of.Research Projects</TH>
				<?php } ?>	
				<?php if($a == "book"){ ?>		
				<TH>No.Of.Book Published</TH>
				<?php } ?>	
				<?php if($a == "journal"){ ?>		
				<TH>No.Of.Journal Published</TH>
				<?php } ?>	
				<?php if($a == "conf"){ ?>		
				<TH>No.Of.Conference</TH>
				<?php } ?>	
				<?php if($a == "atten"){ ?>		
				<TH>No.Of.Programme Attended</TH>
				<?php } ?>	
				<?php if($a == "workshop_att"){ ?>		
				<TH>No.Of.Workshop Attended</TH>
				<?php } ?>	
				<?php if($a == "seminar_att"){ ?>		
				<TH>No.Of.Seminar Attended</TH>
				<?php } ?>	
				<?php if($a == "fdp_att"){ ?>		
				<TH>No.Of.FDP Attended</TH>
				<?php } ?>	
				<?php if($a == "sdp_att"){ ?>		
				<TH>No.Of.SDP Attended</TH>
				<?php } ?>	
				<?php if($a == "training_att"){ ?>		
				<TH>No.Of.Training Attended</TH>
				<?php } ?>	
				<?php if($a == "summerorwinter_att"){ ?>		
				<TH>No.Of.Summer/Winter School Attended</TH>
				<?php } ?>	
				<?php if($a == "org"){ ?>		
				<TH>No.Of.Programme Organized</TH>
				<?php } ?>	
				<?php if($a == "sch"){ ?>		
				<TH>No.Of.Scholars</TH>
				<?php } ?>	
				<?php if($a == "awa"){ ?>		
				<TH>No.Of.Awards</TH>
				<?php } ?>
				<?php if($a == "mem"){ ?>		
				<TH>No.Of.Membership</TH>
				<?php } ?>
				<?php } ?>
			</TR>			
			<?php
			while($row = $result->fetch_assoc()) 
			{
				$sid = 0;
				$deptid=$row['deptid'];
				tab1($deptid,$cat,$sid,$_POST['type']);
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
				<?php
				foreach($_POST['type'] as $a) {					
				if($a == "dob" ){ ?>
				<TH>Date Of Birth</TH>	
				<?php } ?>
				<?php if($a == "doj"){ ?>
				<TH>Date of Joining</TH>	
				<?php } ?>
				<?php if($a == "community"){ ?>
				<TH>Community</TH>	
				<?php } ?>	
				<?php if($a == "gender"){ ?>				
				<TH>Gender</TH>
				<?php } ?>	
				<?php if($a == "mobile"){ ?>		
				<TH>Mobile Number</TH>
				<?php } ?>	
				<?php if($a == "aadhar"){ ?>		
				<TH>Aadhar Number</TH>
				<?php } ?>	
				<?php if($a == "mail"){ ?>		
				<TH>Email</TH>
				<?php } ?>	
				<?php if($a == "google"){ ?>		
				<TH>Google Link</TH>
				<?php } ?>	
				<?php if($a == "exp"){ ?>		
				<TH>Total Experience</TH>
				<?php } ?>		
				<?php if($a == "inexp"){ ?>		
				<TH>In-house Experience</TH>
				<?php } ?>	
				<?php if($a == "Funded"){ ?>		
				<TH>No.Of.Research Projects</TH>
				<?php } ?>	
				<?php if($a == "book"){ ?>		
				<TH>No.Of.Book Published</TH>
				<?php } ?>	
				<?php if($a == "journal"){ ?>		
				<TH>No.Of.Journal Published</TH>
				<?php } ?>	
				<?php if($a == "conf"){ ?>		
				<TH>No.Of.Conference</TH>
				<?php } ?>	
				<?php if($a == "atten"){ ?>		
				<TH>No.Of.Programme Attended</TH>
				<?php } ?>	
				<?php if($a == "workshop_att"){ ?>		
				<TH>No.Of.Workshop Attended</TH>
				<?php } ?>	
				<?php if($a == "seminar_att"){ ?>		
				<TH>No.Of.Seminar Attended</TH>
				<?php } ?>	
				<?php if($a == "fdp_att"){ ?>		
				<TH>No.Of.FDP Attended</TH>
				<?php } ?>	
				<?php if($a == "sdp_att"){ ?>		
				<TH>No.Of.SDP Attended</TH>
				<?php } ?>	
				<?php if($a == "training_att"){ ?>		
				<TH>No.Of.Training Attended</TH>
				<?php } ?>	
				<?php if($a == "summerorwinter_att"){ ?>		
				<TH>No.Of.Summer/Winter School Attended</TH>
				<?php } ?>	
				<?php if($a == "org"){ ?>		
				<TH>No.Of.Programme Organized</TH>
				<?php } ?>	
				<?php if($a == "sch"){ ?>		
				<TH>No.Of.Scholars</TH>
				<?php } ?>	
				<?php if($a == "awa"){ ?>		
				<TH>No.Of.Awards</TH>
				<?php } ?>
				<?php if($a == "mem"){ ?>		
				<TH>No.Of.Membership</TH>
				<?php } ?>
				<?php } ?>
			</TR>

				<?php
				tab1($deptid,$cat,$sid,$_POST['type']);
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
					<TH>Name</TH>				
					<TH>Date Of Birth</TH>
					<TH>Age</TH>
					<TH>Gender</TH>
					<TH>Email</TH>
					<TH>Mobile Number</TH>
					<TH>Address</TH>
					<TH>Aadhar Number</TH>
					<TH>Date Of Joining</TH>
					<TH>Photo</TH>
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