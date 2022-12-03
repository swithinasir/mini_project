
<html>


<style>
* {
    box-sizing: border-box;
}

input[type=text],[type=password], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
	height:100%
}

.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-75 {
    float: left;
    width: 75%;
    margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .col-25, .col-75, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}
</style>
<div class="container">
  <form action="dept1.php" method="post" enctype="multipart/form-data">
   
	 <div class="row">
      <div class="col-25">
        <label for="fname">Depatment</label>
      </div>  
	<div class="col-75">
        <input type="text" id="dept" name="dept" required>
      </div>
    </div>	  
    
	
	 <div class="row">
      <div class="col-25">
        <label for="fname">Department ID</label>
      </div>
      <div class="col-75">
	  
	 <input type="text" id="deptid" name="deptid" required>
 
	</div>
	</div>
	   <div class="row">
      <div class="col-25">
        <label for="fname">Email ID</label>
      </div>
      <div class="col-75">
	  
	 <input type="text" id="email" name="email" required>
 
	</div>
	</div>
	  <div class="row">
      <div class="col-25">
        <label for="fname">UserName</label>
      </div>
      <div class="col-75">
	  
	 <input type="text" id="username" name="username" required>
 
	</div>
	</div>
	  
	  <div class="row">
      <div class="col-25">
        <label for="fname">Password</label>
      </div>
      <div class="col-75">
	  
	 <input type="password" id="password" name="password" required>
 
	</div>
	</div>
	  
	   <div class="row">
      <div class="col-25">
        <label for="fname">About the Department</label>
      </div>
      <div class="col-75">	  
	<textarea rows="4" cols="25" name="about" id="about" required>
	   </textarea>
	</div>
	</div>
	
    <div class="row">
      <div class="col-25">
        <label for="fname">Department Image</label>
      </div>
      <div class="col-75">	  
	<input type="file" id="file" name="file" required>
	</div>
	</div>
	
	 <div class="row">
      <br>
    </div>
	
    <div class="row">
      <input type="submit" value="Submit">
    </div>
  </form>
</div>
</html>