<?php
session_start();
include("../conn/config1.php");
?>
<html>
<head>

<meta charset="utf-8">
<style>

input[type=text],input[type=date], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
	 background-color: #f2f2f2;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-75 {
    float: left;
    width: 75%;
    margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .col-25, .col-75, input[type=submit], input[type=button] {
        width: 100%;
        margin-top: 0;
    }
}
/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
   
    width: 50%; /* Could be more or less, depending on screen size */
}


/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}


</style>




<title>Admin</title>
<link rel="stylesheet"  href="style.css" />
</head>

<body style="background-color:grey;">
   
  	<!--Start of First PHD update-->


	<?php

if(isset($_POST["submit"])){
$ayear=$_POST["ayear"];
 $year=$_POST["year"];
 $sem=$_POST["sem"];
 $sec=$_POST["sec"];
 $level=$_POST["level"];
 $batch=$_POST["batch"];
 if($sem > 0)
 {
	$new_j=$_POST["new_j"];
	$drop=$_POST["drop"];
	$d_discon=$_POST["d_discon"];
	$d_notreg=$_POST["d_notreg"];
	$d_passed=$_POST["d_passed"];
	$d_others=$_POST["d_others"];
 }
 else
 {
	$new_j=0;
	$drop=0;
	$d_discon=0;
	$d_notreg=0;
	$d_passed=0;
	$d_others=0;
 }
 $g_boys=$_POST["g_boys"];
 $g_girls=$_POST["g_girls"];
 $g_others=$_POST["g_others"];
  $c_oc=$_POST["c_oc"];
 $c_bc=$_POST["c_bc"];
 $c_bcm=$_POST["c_bcm"];
 $c_mbc=$_POST["c_mbc"];
 $c_sc=$_POST["c_sc"];
 $c_sca=$_POST["c_sca"];
 $c_st=$_POST["c_st"];
 /*$r_hindu=$_POST["r_hindu"];
 $r_muslim=$_POST["r_muslim"];
 $r_christian=$_POST["r_christian"];
 $r_others=$_POST["r_others"];*/
 $stud=$_POST["stud"];
 
  ?>
  
	
	<form class="modal-content animate" action="stud1.php"  method="post" enctype="multipart/form-data">
			<br>
			<INPUT type="hidden" name="ayear" value="<?php echo $ayear; ?>" />
			<INPUT type="hidden" name="year" value="<?php echo $year; ?>" />
			<INPUT type="hidden" name="sem" value="<?php echo $sem; ?>" />
			<INPUT type="hidden" name="sec" value="<?php echo $sec; ?>" />
			<INPUT type="hidden" name="level" value="<?php echo $level; ?>" />
			<INPUT type="hidden" name="batch" value="<?php echo $batch; ?>" />
			<INPUT type="hidden" name="new_j" value="<?php echo $new_j; ?>" />
			<INPUT type="hidden" name="drop" value="<?php echo $drop; ?>" />
			<INPUT type="hidden" name="d_discon" value="<?php echo $d_discon; ?>" />
			<INPUT type="hidden" name="d_notreg" value="<?php echo $d_notreg; ?>" />
			<INPUT type="hidden" name="d_passed" value="<?php echo $d_passed; ?>" />
			<INPUT type="hidden" name="d_others" value="<?php echo $d_others; ?>" />
			<INPUT type="hidden" name="g_boys" value="<?php echo $g_boys; ?>" />
			<INPUT type="hidden" name="g_girls" value="<?php echo $g_girls; ?>" />
			<INPUT type="hidden" name="g_others" value="<?php echo $g_others; ?>" />
			<INPUT type="hidden" name="c_oc" value="<?php echo $c_oc; ?>" />
			<INPUT type="hidden" name="c_bc" value="<?php echo $c_bc; ?>" />
			<INPUT type="hidden" name="c_bcm" value="<?php echo $c_bcm; ?>" />
			<INPUT type="hidden" name="c_mbc" value="<?php echo $c_mbc; ?>" />
			<INPUT type="hidden" name="c_sc" value="<?php echo $c_sc; ?>" />
			<INPUT type="hidden" name="c_sca" value="<?php echo $c_sca; ?>" />
			<INPUT type="hidden" name="c_st" value="<?php echo $c_st; ?>" />
			<!--<INPUT type="hidden" name="r_hindu" value="<?php// echo $r_hindu; ?>" />
			<INPUT type="hidden" name="r_muslim" value="<?php //echo $r_muslim; ?>" />
			<INPUT type="hidden" name="r_christian" value="<?php// echo $r_christian; ?>" />
			<INPUT type="hidden" name="r_others" value="<?php// echo $r_others; ?>" />-->
			<INPUT type="hidden" name="stud" value="<?php echo $stud; ?>" />
				<center>
<?php				if($drop > 0)
				{ ?>
					<div class="row">
			<div class="col-25">
				<label for="fname">Name List of Dropout Students</label>
			</div>
			<div class="col-25">
				<INPUT id="file1" type="file" name="file1" />
				<label class="message" id="msg2" > </label>
			</div>
			<div class="col-25"></div>
			<div class="col-25">
			&nbsp;&nbsp;
			<a href="../gallery/drop/sample_file.csv" target="_blank">Download Sample File</a>
			</div>
			</div>
		</div> 
				<?php } ?>
		<div class="row">
		<div class="col-25">
			<label for="fname">&nbsp;&nbsp;Name List of Students</label>
				<label class="message" id="msg1" > </label>
				
		</div>	
		<div class="col-25">
			<INPUT id="file" type="file" name="file" />
		</div>
			<div class="col-25"></div>
			<div class="col-25">
			&nbsp;&nbsp;
			<a href="../gallery/stud/sample_file.csv" target="_blank">Download Sample File</a>
			</div>
		</div>
					<button type="submit" name="submit1" style="width:auto;">Upload</button>
				</center>
			
		
	</form>
<?php
}
?>
<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>


<?php
if(isset($_POST["submit1"]))
{	
 $ayear=$_POST["ayear"];
 $year=$_POST["year"];
 $sem=$_POST["sem"];
 $sec=$_POST["sec"];
 $level=$_POST["level"];
 $batch=$_POST["batch"];
 if($sem > 0)
 {
	$new_j=$_POST["new_j"];
	$drop=$_POST["drop"];
	$d_discon=$_POST["d_discon"];
	$d_notreg=$_POST["d_notreg"];
	$d_passed=$_POST["d_passed"];
	$d_others=$_POST["d_others"];
 }
 else
 {
	$new_j=0;
	$drop=0;
	$d_discon=0;
	$d_notreg=0;
	$d_passed=0;
	$d_others=0;
 }
 $g_boys=$_POST["g_boys"];
 $g_girls=$_POST["g_girls"];
 $g_others=$_POST["g_others"];
  $c_oc=$_POST["c_oc"];
 $c_bc=$_POST["c_bc"];
 $c_bcm=$_POST["c_bcm"];
 $c_mbc=$_POST["c_mbc"];
 $c_sc=$_POST["c_sc"];
 $c_sca=$_POST["c_sca"];
 $c_st=$_POST["c_st"];
 /*$r_hindu=$_POST["r_hindu"];
 $r_muslim=$_POST["r_muslim"];
 $r_christian=$_POST["r_christian"];
 $r_others=$_POST["r_others"];*/
 $stud=$_POST["stud"];
 
 $deptid=$_SESSION['deptid'];
 $aaa=$deptid."_stud";

    
	
	$drop_file=0;	
	if(empty($_FILES['file1']['name']))
	{
		$final_file1 =0;		
	}
	else
	{
	
	//$file1 = rand(1000,100000)."-".$_FILES['file1']['name'];
	$file1=$deptid."-".$batch."-".$year."-".$sem."-".$sec."-DROP-".$_FILES['file1']['name'];
    $file_loc1 = $_FILES['file1']['tmp_name'];
	$file_size1 = $_FILES['file1']['size'];
	$file_type1 = $_FILES['file1']['type'];
	$folder1="../gallery/drop/".$aaa."/";
	//$new_file_name1 = strtolower($file1);	
	//$final_file1=str_replace(' ','-',$new_file_name1);
	$final_file1=$file1;
	$loc=$folder1.$final_file1;
	$move1=move_uploaded_file($file_loc1,$folder1.$final_file1);
	$fil = fopen($loc,"r");
	$a=(fgetcsv($fil));	
		if(($a[0]=="regno")&&($a[1]=="name"))
		{
			$drop_file=0;
		}
		else
		{
			$drop_file=1;
		}
	fclose($fil);		
	}
	
	
	//$aaa=$deptid."_stud";
	//$file = rand(1000,100000)."-".$_FILES['file']['name'];
	$file = $deptid."-".$batch."-".$year."-".$sem."-".$sec."-NEW-".$_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
	$file_size = $_FILES['file']['size'];
	$file_type = $_FILES['file']['type'];
	$folder="../gallery/stud/".$aaa."/";
	//$new_file_name = strtolower($file);	
	$final_file=$file;
	$loc1=$folder.$final_file;
	if(move_uploaded_file($file_loc,$folder.$final_file) && $drop_file == 0)
	{
		$fil1 = fopen($loc1,"r");
	$b=(fgetcsv($fil1));	
		if(($b[0]=="regno")&&($b[1]=="name"))
		{
       // $sql = "INSERT into `$aaa` (`ayear`, `year`, `sem`, `sec`, `level`, `batch`, `new_j`, `drop`, `d_discon`, `d_notreg`, `d_passed`, `d_others`, `g_boys`, `g_girls`, `g_others`, `c_bc`, `c_oc`, `c_obc`, `c_sc`, `c_st`, `c_others`, `r_hindu`, `r_muslim`, `r_christian`, `r_others`, `stud`, `drop_file`, `stud_file`) 	VALUES 
		//							('$ayear','$year','$sem','$sec','$level','$batch','$new_j','$drop','$d_discon','$d_notreg','$d_passed','$d_others','$g_boys','$g_girls','$g_others','$c_bc','$c_oc','$c_obc','$c_sc','$c_st','$c_others','$r_hindu','$r_muslim','$r_christian','$r_others','$stud','$final_file1','$final_file')";
		  $sql = "INSERT into `$aaa` (`ayear`, `year`, `sem`, `sec`, `level`, `batch`, `new_j`, `drop`, `d_discon`, `d_notreg`, `d_passed`, `d_others`, `g_boys`, `g_girls`, `g_others`, `c_bc`, `c_oc`, `c_bcm`,`c_mbc`, `c_sc`,`c_sca`,`c_st`, `stud`, `drop_file`, `stud_file`) 	VALUES 
									('$ayear','$year','$sem','$sec','$level','$batch','$new_j','$drop','$d_discon','$d_notreg','$d_passed','$d_others','$g_boys','$g_girls','$g_others','$c_bc','$c_oc','$c_bcm','$c_mbc','$c_sc','$c_sca','$c_st','$stud','$final_file1','$final_file')";
	
		if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Student Data Inserted Successfully.!");</script>';
					echo '<script type="text/javascript">window.location.href = "stud_desc.php";</script>';

		
	}else {
    echo "Error: " . $sql . "<br>" . $con->error;
}
}
		else
		{
			echo '<script language="javascript">alert("HEADERS doesnot Match!");</script>';
					echo '<script type="text/javascript">window.location.href = "stud_desc.php";</script>';
		}
	fclose($fil1);	
	}
	else
		{
			echo '<script language="javascript">alert("Data Not inserted . Check the file Format or the Headers !!!");</script>';
					echo '<script type="text/javascript">window.location.href = "stud_desc.php";</script>';
		}
       
}
/*
if(isset($_POST["Export"]))
 {		 
      header('Content-Type: text/csv; charset=utf-8');  
      header('Content-Disposition: attachment; filename=sample_file.csv');  
      $output = fopen("php://output", "w");  
      fputcsv($output, array('regno', 'name'));       
      fclose($output);  
 }       
if(isset($_POST["Export1"]))
 {		 
      header('Content-Type: text/csv; charset=utf-8');  
      header('Content-Disposition: attachment; filename=sample_file.csv');  
      $output = fopen("php://output", "w");  
      fputcsv($output, array('regno', 'name'));       
      fclose($output);  
 }         */
?>