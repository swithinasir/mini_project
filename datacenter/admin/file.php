
<?php
$date1 = "1996-06-26";
$date2 = "2018-12-04";

$diff = abs(strtotime($date2) - strtotime($date1));
$years = floor($diff / (365*60*60*24));
$months = floor(($diff - $years * 365*60*60*24) / (30*60*60*24));
$days = floor(($diff - $years * 365*60*60*24 - $months*30*60*60*24)/ (60*60*24));
//$hours = floor(($diff - $years * 365*60*60*24 - $months*30*60*60*24 - $days*60*60*24)/ (60*24));
//$miniutes = floor(($diff - $years * 365*60*60*24 - $months*30*60*60*24 - $days*60*60*24 - $hours*60*24)/ (24));
//printf("%d years, %d months, %d days, %d hours, %d miniutes\n", $years, $months, $days, $hours, $miniutes);
printf("%d years, %d months, %d days\n", $years, $months, $days);
?>