<?php
session_start();
?>


<style>
/* Style the buttons */
.btn {
   text-align: center;
	border-radius: 16px;
    background-color: skyblue;
    color: black;
  padding: 10px 10px;
    border: none;
    cursor: pointer;
    width: 100%;
}

/* Style the active class, and buttons on mouse-over */
.btn:hover {
    background-color: #ddd;
    color: black;
}
</style>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}



.active {
  background-color: #ddd;
  color: black;
}

.topnav .icon {
  display: none;
}


</style>
<link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/style.min.css" rel="stylesheet">


<style>
button {
	text-align: center;
	border-radius: 16px;
    background-color: skyblue;
    color: black;
  padding: 10px 10px;
    border: none;
    cursor: pointer;
    width: 100%;
	
}
.button1 {
	border-radius: 16px;
    background-color: ;
    border: none;
    color: white;
    padding: 10px 10px;
    
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
		width: 10%;
    margin: 0 auto;
    cursor: pointer;
}
.s:hover{
	 background-color: #ddd;
  color: black;
}
.button2 {
	border-radius: 30px;
    background-color: ;
    border: none;
    color: white;
    padding: 10px 10px;
  
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
	width: 10%;
    margin: 0 auto;
    cursor: pointer;
}
</style>

<style>
/* Style the buttons */
.btn {
    border: none;
    outline: none;
     padding: 5px 80px;
    background-color: #f1f1f1;
    cursor: pointer;
    font-size: 18px;
}

/* Style the active class, and buttons on mouse-over */
.active, .btn:hover {
    background-color: #666;
    color: white;
}
</style>
<body style="background-color:skyblue">
 <nav class="navbar navbar-inverse navbar-fixed-top">
<div class="topnav" id="myTopnav">
  
 
   <a href="fac_prof.php" target = "frame1"  title="View Profile" class="s"><?php echo $_SESSION['sid'];?></a>
      <a href="change-passowrd.php" target = "frame1" ><img title="Change password" src="../images/change.png" height="25px" width="35px"></a>

 <a href="logout.php" target = "_parent" class="button1"><img title="Logout" src="../images/logout.png" height="25px" width="35px"></a>
  </div>     

</nav> 

   
<div id="myDIV">
 <br>
 <br> <br>
 <br>
  <a href="education/ten_fac.php" target= "frame1" onclick=change2('education/edu_nav.php') ><button class="btn active">EDUCATION</button></a><br><br>
  <a href="experience/exp_in_fac.php" target = "frame1" onclick=change2('experience/exp_nav_fac.php') ><button class="btn">EXPERIENCE</button></a><br><br>
  <a href="selfgrowth/att_fac.php" target = "frame1" onclick=change2('selfgrowth/pro_nav_fac.php')><button class="btn">SELF-GROWTH</button></a><br><br>
  <a href="publication/bk_fac.php" target = "frame1" onclick=change2('publication/pub_nav.php') ><button class="btn">PUBLICATION</button></a><br><br>
<a href="fundedproject/fun_pro_fac.php" target="frame1" onclick=change2('fundedproject/fun_nav.php')><button class="btn">FUNDED PROJECT</button></a><br><br>
<a href="researchguidence/res_gui_fac.php" target = "frame1" onclick=change2('researchguidence/res_gui_nav_fac.php')><button class="btn">RESEARCH GUIDANCE</button></a><br><br>
<a href="responsibility/res_fac.php" target = "frame1" onclick=change2('responsibility/res_nav_fac.php') ><button class="btn">RESPONSIBILITY</button></a><br><br>
<a href="membership/mem_fac.php" target = "frame1" onclick=change2('membership/mem_nav_fac.php')><button class="btn">MEMBERSHIP</button></a><br><br>
<a href="awaard/awa_fac.php" target = "frame1" onclick=change2('awaard/awa_nav_fac.php')><button class="btn">AWARDS</button></a><br><br>
 
 </div>

</body>
<script>
// Add active class to the current button (highlight it)
var header = document.getElementById("myDIV");
var btns = header.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
</script>

<script language="JavaScript" type="text/javascript">
    function change2(url)
    {
    parent.frame2.location=url;

    }
     </script>

