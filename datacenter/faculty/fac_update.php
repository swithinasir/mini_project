<?php
session_start();
include("../conn/config.php");

if(isset($_POST["update_personal"]))
{
	$name=$_POST["name"];
	$designation=$_POST["designation"];
	$dob=$_POST["dob"];
	$doj=$_POST["doj"];
	$mob1=$_POST["mob1"];
	$comunity=$_POST["comunity"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac";
	$sql = "UPDATE `$aaa` SET `name`='$name' ,`designation`='$designation' ,`dob`='$dob' ,`doj`='$doj' ,`mob1`='$mob1' ,`comunity`='$comunity' WHERE sid = '$sid'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Personal Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
 if(isset($_POST["update_sch"]))
{
	$sname=$_POST["sname"];
	$syear=$_POST["syear"];
	$spercentage=$_POST["spercentage"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_edu";
	$sql = "UPDATE `$aaa` SET `sname`='$sname' ,`syear`='$syear' ,`spercentage`='$spercentage' WHERE sid = '$sid'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("10th Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
 if(isset($_POST["update_sch2"]))
{
	$s2name=$_POST["s2name"];
	$s2year=$_POST["s2year"];
	$s2percentage=$_POST["s2percentage"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_edu";
	$sql = "UPDATE `$aaa` SET `s2name`='$s2name' ,`s2year`='$s2year' ,`s2percentage`='$s2percentage' WHERE sid = '$sid'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("12th Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
 if(isset($_POST["update_dip"]))
{
	$dname=$_POST["dname"];
	$dyear=$_POST["dyear"];
	$dpercentage=$_POST["dpercentage"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_edu";
	$sql = "UPDATE `$aaa` SET `dname`='$dname' ,`dyear`='$dyear' ,`dpercentage`='$dpercentage' WHERE sid = '$sid'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Diploma Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
  if(isset($_POST["update_dip1"]))
{
	$d1name=$_POST["d1name"];
	$d1year=$_POST["d1year"];
	$d1percentage=$_POST["d1percentage"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_edu";
	$sql = "UPDATE `$aaa` SET `d1name`='$d1name' ,`d1year`='$d1year' ,`d1percentage`='$d1percentage' WHERE sid = '$sid'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Diploma Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
  if(isset($_POST["update_dip2"]))
{
	$d2name=$_POST["d2name"];
	$d2year=$_POST["d2year"];
	$d2percentage=$_POST["d2percentage"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_edu";
	$sql = "UPDATE `$aaa` SET `d2name`='$d2name' ,`d2year`='$d2year' ,`d2percentage`='$d2percentage' WHERE sid = '$sid'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Diploma Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
  if(isset($_POST["update_ug"]))
{
	$uname=$_POST["uname"];
	$uyear=$_POST["uyear"];
	$upercentage=$_POST["upercentage"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_edu";
	$sql = "UPDATE `$aaa` SET `uname`='$uname' ,`uyear`='$uyear' ,`upercentage`='$upercentage' WHERE sid = '$sid'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("UG Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
  if(isset($_POST["update_ug1"]))
{
	$u1name=$_POST["u1name"];
	$u1year=$_POST["u1year"];
	$u1percentage=$_POST["u1percentage"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_edu";
	$sql = "UPDATE `$aaa` SET `u1name`='$u1name' ,`u1year`='$u1year' ,`u1percentage`='$u1percentage' WHERE sid = '$sid'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("UG Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
  if(isset($_POST["update_ug2"]))
{
	$u2name=$_POST["u2name"];
	$u2year=$_POST["u2year"];
	$u2percentage=$_POST["u2percentage"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_edu";
	$sql = "UPDATE `$aaa` SET `u2name`='$u2name' ,`u2year`='$u2year' ,`u2percentage`='$u2percentage' WHERE sid = '$sid'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("UG Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
  if(isset($_POST["update_pg"]))
{
	$pname=$_POST["pname"];
	$pyear=$_POST["pyear"];
	$ppercentage=$_POST["ppercentage"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_edu";
	$sql = "UPDATE `$aaa` SET `pname`='$pname' ,`pyear`='$pyear' ,`ppercentage`='$ppercentage' WHERE sid = '$sid'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("PG Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
  if(isset($_POST["update_pg1"]))
{
	$p1name=$_POST["p1name"];
	$p1year=$_POST["p1year"];
	$p1percentage=$_POST["p1percentage"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_edu";
	$sql = "UPDATE `$aaa` SET `p1name`='$p1name' ,`p1year`='$p1year' ,`p1percentage`='$p1percentage' WHERE sid = '$sid'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("PG Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
  if(isset($_POST["update_pg2"]))
{
	$p2name=$_POST["p2name"];
	$p2year=$_POST["p2year"];
	$p2percentage=$_POST["p2percentage"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_edu";
	$sql = "UPDATE `$aaa` SET `p2name`='$p2name' ,`p2year`='$p2year' ,`p2percentage`='$p2percentage' WHERE sid = '$sid'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("PG Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
  if(isset($_POST["update_mphill"]))
{
	$mname=$_POST["mname"];
	$myear=$_POST["myear"];
	$mpercentage=$_POST["mpercentage"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_edu";
	$sql = "UPDATE `$aaa` SET `mname`='$mname' ,`myear`='$myear' ,`mpercentage`='$mpercentage' WHERE sid = '$sid'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("M.Phill Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
  if(isset($_POST["update_ph"]))
{
	$phname=$_POST["phname"];
	$phyear=$_POST["phyear"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_edu";
	$sql = "UPDATE `$aaa` SET `phname`='$phname' ,`phyear`='$phyear'  WHERE sid = '$sid'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Ph.D Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
  if(isset($_POST["update_ph1"]))
{
	$ph1name=$_POST["ph1name"];
	$ph1year=$_POST["ph1year"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_edu";
	$sql = "UPDATE `$aaa` SET `ph1name`='$ph1name' ,`ph1year`='$ph1year'  WHERE sid = '$sid'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Ph.D Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
  if(isset($_POST["update_ph2"]))
{
	$ph2name=$_POST["ph2name"];
	$ph2year=$_POST["ph2year"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_edu";
	$sql = "UPDATE `$aaa` SET `ph2name`='$ph2name' ,`ph2year`='$ph2year'  WHERE sid = '$sid'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Ph.D Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
  if(isset($_POST["update_research_project"]))
{
	$id=$_POST["id"];
	$ayear=$_POST["ayear"];
	$titleofpro1=$_POST["titleofpro1"];
	$duration1=$_POST["duration1"];
	$amountsan1=$_POST["amountsan1"];
	$agency1=$_POST["agency1"];
	$startdate1=$_POST["startdate1"];
	$copiname1=$_POST["copiname1"];
	$year1=$_POST["year1"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_funpat";
	$sql = "UPDATE `$aaa` SET `ayear`='$ayear' ,`titleofpro1`='$titleofpro1' ,`duration1`='$duration1' ,`amountsan1`='$amountsan1' ,`agency1`='$agency1' ,`startdate1`='$startdate1' ,`copiname1`='$copiname1' ,`year1`='$year1' WHERE `id`='$id'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Research Project Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
  if(isset($_POST["update_book"]))
{
	$id=$_POST["id"];
	$ayear=$_POST["ayear"];
	$bk1=$_POST["bk1"];
	$bkcha1=$_POST["bkcha1"];
	$bkissn1=$_POST["bkissn1"];
	$bkmy1=$_POST["bkmy1"];
	$bkpub1=$_POST["bkpub1"];
	$bktype1=$_POST["bktype1"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_bkjrn";
	$sql = "UPDATE `$aaa` SET `ayear`='$ayear' ,
	`bk1`='$bk1' ,
	`bkcha1`='$bkcha1' ,
	`bkissn1`='$bkissn1' ,
	`bkmy1`='$bkmy1' ,
	`bkpub1`='$bkpub1' ,
	`bktype1`='$bktype1' WHERE `id`='$id'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Book Published Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
  if(isset($_POST["update_journal"]))
{
	$id=$_POST["id"];
	$ayear=$_POST["ayear"];
	$jrntitle1=$_POST["jrntitle1"];
	$jrnname1=$_POST["jrnname1"];
	$jrnvol1=$_POST["jrnvol1"];
	$jrnissue1=$_POST["jrnissue1"];
	$jrnissn1=$_POST["jrnissn1"];
	$jrncategory1=$_POST["jrncategory1"];
	$jrnlink1=$_POST["jrnlink1"];
	$jrncit1=$_POST["jrncit1"];
	$jrnimpact1=$_POST["jrnimpact1"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_bkjrn";
	$sql = "UPDATE `$aaa` SET `ayear`='$ayear' ,
	`jrntitle1`='$jrntitle1' ,
	`jrnname1`='$jrnname1' ,
	`jrnvol1`='$jrnvol1' ,
	`jrnissue1`='$jrnissue1' ,
	`jrnissn1`='$jrnissn1' ,
	`jrncategory1`='$jrncategory1' ,
	`jrnlink1`='$jrnlink1' ,
	`jrncit1`='$jrncit1' ,
	`jrnimpact1`='$jrnimpact1' WHERE `id`='$id'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Journal Published Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
  if(isset($_POST["update_conference"]))
{
	$id=$_POST["id"];
	$ayear=$_POST["ayear"];
	$conname1=$_POST["conname1"];
	$contitle1=$_POST["contitle1"];
	$conorg1=$_POST["conorg1"];
	$condays1=$_POST["condays1"];
	$confrom1=$_POST["confrom1"];
	$conto1=$_POST["conto1"];
	$condate1=$_POST["condate1"];
	$conlevel1=$_POST["conlevel1"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_glc";
	$sql = "UPDATE `$aaa` SET `ayear`='$ayear' ,
	`conname1`='$conname1' ,
	`contitle1`='$contitle1' ,
	`conorg1`='$conorg1' ,
	`condays1`='$condays1' ,
	`confrom1`='$confrom1' ,
	`conto1`='$conto1' ,
	`condate1`='$condate1' ,
	`conlevel1`='$conlevel1' WHERE `id`='$id'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Conference Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
  if(isset($_POST["update_attended"]))
{
	$id=$_POST["id"];
	$ayear=$_POST["ayear"];
	$attcategory1=$_POST["attcategory1"];
	$atttitle1=$_POST["atttitle1"];
	$attorg1=$_POST["attorg1"];
	$attdays1=$_POST["attdays1"];
	$attfrom1=$_POST["attfrom1"];
	$attto1=$_POST["attto1"];
	$attdate1=$_POST["attdate1"];
	$attlevel1=$_POST["attlevel1"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_attorg";
	$sql = "UPDATE `$aaa` SET `ayear`='$ayear' ,
	`attcategory1`='$attcategory1' ,
	`atttitle1`='$atttitle1' ,
	`attorg1`='$attorg1' ,
	`attdays1`='$attdays1' ,
	`attfrom1`='$attfrom1' ,
	`attto1`='$attto1' ,
	`attdate1`='$attdate1' ,
	`attlevel1`='$attlevel1' WHERE `id`='$id'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Program Attended Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
  if(isset($_POST["update_gl"]))
{
	$id=$_POST["id"];
	$ayear=$_POST["ayear"];
	$gltitle1=$_POST["gltitle1"];
	$gldays1=$_POST["gldays1"];
	$glfrom1=$_POST["glfrom1"];
	$glto1=$_POST["glto1"];
	$gldate1=$_POST["gldate1"];
	$gltopic1=$_POST["gltopic1"];
	$glorg1=$_POST["glorg1"];
	$glplace1=$_POST["glplace1"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_glc";
	$sql = "UPDATE `$aaa` SET `ayear`='$ayear' ,
	`gltitle1`='$gltitle1' ,
	`gldays1`='$gldays1' ,
	`glfrom1`='$glfrom1' ,
	`glto1`='$glto1' ,
	`gldate1`='$gldate1' ,
	`gltopic1`='$gltopic1' ,
	`glorg1`='$glorg1' ,
	`glplace1`='$glplace1' WHERE `id`='$id'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Guest Lecture Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
  if(isset($_POST["update_orga"]))
{
	$id=$_POST["id"];
	$ayear=$_POST["ayear"];
	$orgcategory1=$_POST["orgcategory1"];
	$orgtitle1=$_POST["orgtitle1"];
	$orgfun1=$_POST["orgfun1"];
	$orgdays1=$_POST["orgdays1"];
	$orgfrom1=$_POST["orgfrom1"];
	$orgto1=$_POST["orgto1"];
	$orgdate1=$_POST["orgdate1"];
	$orgres1=$_POST["orgres1"];
	$orgpar1=$_POST["orgpar1"];
	$orglevel1=$_POST["orglevel1"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_attorg";
	$sql = "UPDATE `$aaa` SET `ayear`='$ayear' ,
	`orgcategory1`='$orgcategory1' ,
	`orgtitle1`='$orgtitle1' ,
	`orgfun1`='$orgfun1' ,
	`orgdays1`='$orgdays1' ,
	`orgfrom1`='$orgfrom1' ,
	`orgto1`='$orgto1' ,
	`orgdate1`='$orgdate1' ,
	`orgres1`='$orgres1' ,
	`orgpar1`='$orgpar1' ,
	`orglevel1`='$orglevel1' WHERE `id`='$id'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Program Organized Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
   if(isset($_POST["update_award"]))
{
	$id=$_POST["id"];
	$ayear=$_POST["ayear"];
	$aname1=$_POST["aname1"];
	$aissue1=$_POST["aissue1"];
	$amy1=$_POST["amy1"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_member";
	$sql = "UPDATE `$aaa` SET `ayear`='$ayear' ,
	`aname1`='$aname1' ,
	`aissue1`='$aissue1' ,
	`amy1`='$amy1'  WHERE `id`='$id'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Award Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
 if(isset($_POST["update_pat"]))
{
	$id=$_POST["id"];
	$ayear=$_POST["ayear"];
	$nameofpat1=$_POST["nameofpat1"];
	$title1=$_POST["title1"];
	$fileno1=$_POST["fileno1"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_funpat";
	$sql = "UPDATE `$aaa` SET `ayear`='$ayear' ,
	`nameofpat1`='$nameofpat1' ,
	`title1`='$title1' ,
	`fileno1`='$fileno1'  WHERE `id`='$id'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Pattent Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
  if(isset($_POST["update_rg"]))
{
	$id=$_POST["id"];
	$uname=$_POST["uname"];
	$supid=$_POST["supid"];
	$reg=$_POST["reg"];
	$name=$_POST["name"];
	$year=$_POST["year"];
	$spec=$_POST["spec"];
	$tit=$_POST["tit"];
	$cyear=$_POST["cyear"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_resg";
	$sql = "UPDATE `$aaa` SET `uname`='$uname' ,
	`supid`='$supid' ,
	`reg`='$reg' ,
	`name`='$name' ,
	`year`='$year' ,
	`spec`='$spec' ,
	`tit`='$tit' ,
	`cyear`='$cyear'  WHERE `id`='$id'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Research Guidence Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
 if(isset($_POST["update_res"]))
{
	$id=$_POST["id"];
	$ayear=$_POST["ayear"];
	$res1=$_POST["res1"];
	$level1=$_POST["level1"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_member";
	$sql = "UPDATE `$aaa` SET `ayear`='$ayear' ,
	`res1`='$res1' ,
	`level1`='$level1'  WHERE `id`='$id'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Responsibility Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
 if(isset($_POST["update_mem"]))
{
	$id=$_POST["id"];
	$ayear=$_POST["ayear"];
	$name1=$_POST["name1"];
	$memberid1=$_POST["memberid1"];
	$validity1=$_POST["validity1"];
	$sid=$_SESSION['sid'];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_fac_member";
	$sql = "UPDATE `$aaa` SET `ayear`='$ayear' ,
	`name1`='$name1' ,
	`memberid1`='$memberid1' ,
	`validity1`='$validity1'  WHERE `id`='$id'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Membership Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "fac_prof.php";</script>';
	}
 
 }
 ?>