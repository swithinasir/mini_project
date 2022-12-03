<?php
session_start();
if( !isset($_SESSION['name_sci']) )
{
	header("location:login.php");
}
else
{
	?>
<!DOCTYPE html>
<html>
<head>
<title>Admin</title>

</head>
 
<frameset rows="25%,*">
		<frame frameborder="0" style="background-color:#ccccff;" src="../header/header.php">
		<frameset cols="20%,*">
			<frame frameborder="0" src="soci_left.php" name = "frame2" >
			<frame frameborder="0" src="soci_desc.php" name = "frame1">				
		</frameset>
</frameset>
<noframes></noframes>

</html>
<?php
}
?>