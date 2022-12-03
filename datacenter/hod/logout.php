<?php   
session_start(); //to ensure you are using same session
//unset($_SESSION['hod']); //destroy the particular session
$_SESSION['hod']= "0";
header("location:index.php"); //to redirect back to "index.php" after logging out
exit();
?>