<!DOCTYPE html>
<html>
<head>
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: Skyblue;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 16px 50px;
	border-right:2px solid #bbb;

    text-decoration: none;
}

li a:hover {
    background-color: #111;
}
</style>
</head>
<body>

<ul>
  <li><a class="active"  href="att_fac.php" target= "frame1" >ATTENDED</a></li>
  
  <li><a href="org_fac.php" target= "frame1">ORGANIZED</a></li>
  <li><a href="gl_fac.php" target= "frame1">GUEST LECTURE</a></li>
  
</ul>

</body>
</html>
