<?php
session_start();
if( !isset($_SESSION['deptid']) )
{
	header("location:../login.php");
}
else
{
	?>
<!DOCTYPE html>
<html>
<head>
<title>Faculty</title>

</head>
 
<frameset rows="25%,*">
		<frame frameborder="0" style="background-color:#ccccff;" src="../header/header.php">
		<frameset cols="20%,*">
			<frame frameborder="0" src="fac_left.php" name = "frame2" >
			<frame frameborder="0" src="fac_desc.php" name = "frame1">				
		</frameset>
</frameset>
<noframes></noframes>

</html>
<?php
}
?>