<style>
.updbtn {
    width: auto;
    padding: 10px 18px;
    background-color: green;
	font-size: 20px;
	font-style: italic;
	
}
.showbtn {
    width: auto;
    padding: 10px 18px;
    background-color: green;
	font-size: 20px;
	font-style: italic;
	
}
.logout {
    width: auto;
    padding: 10px 18px;
    background-color: red;
	align:left;
	font-size: 20px;
	font-style: italic;
	
}
/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
<div height="100%" width="100%" >
<p>
<button type="submit" class="updbtn"  >UPDATE</button>
<button type="submit" class="showbtn"  >VIEW</button>
<a href="logout.php" target="_blank" >logout</a> 
</p>
</div>


