<?php   
session_start(); //to ensure you are using same session
unset($_SESSION['sid']); //destroy the particular session
header("location:../index1.php"); //to redirect back to "index.php" after logging out
exit();
?>