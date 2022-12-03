<?php
session_start();
include("../conn/config.php");
?>
<html>
<style>
* {
  box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column {
  float: left;
  width: 50%;
  padding: 10px;
  height: 100%; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
</style>
<body style="background-color: #66c2ff">
<div class="row">
  <div class="column" style="background-color:#66c2ff;">
    <h2>For the Society of <?php echo $_SESSION['name_sci'];?> </h2>
	
  </div>
</div>
</body>
</html>