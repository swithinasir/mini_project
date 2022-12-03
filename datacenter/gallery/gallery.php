<?php
include('connection.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>AAM</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-responsive.css" rel="stylesheet">
<!--[if lt IE 9]><script src="js/html5.js"></script><![endif]-->
<link href='http://fonts.googleapis.com/css?family=Lato:300' rel='stylesheet' type='text/css'>
</head>
<body>

<hr>
  
     <?php
$sql="SELECT * FROM gallery ORDER BY id ASC";
$result_set=mysqli_query($con,$sql);
?>

  
    <?php
	
	while($row=mysqli_fetch_array($result_set))
	{
  	    echo '<div class="container">';
		echo '<div class="row">';
        echo '<div class="col-lg-4">';
		echo '<h3>'.$row['caption'].'</h3>';
        echo '<a href="gallery/'.$row['file'].'">';    
        echo '<img src="gallery/'.$row['file'].'" id="img" style="width:150px;height:150px">';
        echo '</a>';
        echo '</div>';
		echo '</div>';
		echo '</div>';
      
	}
?>
  
  
  
  
  
  
  
  
</div>
<script src="js/jquery-1.7.1.min.js"></script>
<script src="js/bootstrap-transition.js"></script>
<script src="js/bootstrap-carousel.js"></script>
<script src="js/bootstrap-alert.js"></script>
<script src="js/bootstrap-modal.js"></script>
<script src="js/bootstrap-dropdown.js"></script>
<script src="js/bootstrap-scrollspy.js"></script>
<script src="js/bootstrap-tab.js"></script>
<script src="js/bootstrap-tooltip.js"></script>
<script src="js/bootstrap-popover.js"></script>
<script src="js/bootstrap-button.js"></script>
<script src="js/bootstrap-collapse.js"></script>
<script src="js/bootstrap-typeahead.js"></script>
<script src="js/jquery-ui-1.8.18.custom.min.js"></script>
<script src="js/jquery.smooth-scroll.min.js"></script>
<script src="js/lightbox.js"></script>
<script>
$('.carousel').carousel({
  interval: 5000
})
</script>
</body>
</html>
