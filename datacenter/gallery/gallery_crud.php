<?php

include_once 'connection.php';

/* code for data update */
if(isset($_GET['edit']))
{
	$sql = mysqli_query($con,"SELECT * FROM gallery WHERE id=".$_GET['edit']);
	$getRow = mysqli_fetch_array($sql);
}

if(isset($_POST['update']))
{
	$sql = mysqli_query($con,"UPDATE gallery SET caption='".$_POST['caption']."' WHERE id=".$_GET['edit']);
	header("Location: gallery_admin.php");
}
/* code for data update */

?>