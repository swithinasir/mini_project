<?php
$reg = $_POST['reg[]'];
$name = $_POST['name[]'];


foreach($reg as $a => $b)
  echo "$reg[$a]  -  $name[$a] <br />";

?>