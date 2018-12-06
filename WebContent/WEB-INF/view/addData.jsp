

<!DOCTYPE html>
<html>
<style>
table.GeneratedTable {
  width: 100%;
<<<<<<< HEAD

=======
>>>>>>> branch 'ushrivas' of https://github.com/ushrivas9/252-Lab6
  border-collapse: collapse;
  border-width: 2px;
<<<<<<< HEAD

=======
>>>>>>> branch 'ushrivas' of https://github.com/ushrivas9/252-Lab6
 
  
}
table.GeneratedTable td{
  border-width: 2px;
<<<<<<< HEAD

=======
  background-color:  #ffffff;
>>>>>>> branch 'ushrivas' of https://github.com/ushrivas9/252-Lab6
  
  padding: 3px;
}
table.GeneratedTable th {
  border-width: 2px;
  border-color: #ffffff;
  border-style: solid;
  padding: 3px;
  color: #000000;
  background-color:  #f1f1f1;
}

</style>

<title>SMALL BUSINESS ANALYTICS</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
.w3-third img{margin-bottom: -6px; opacity: 0.8; cursor: pointer}
.w3-third img:hover{opacity: 1}
</style>
<body class="w3-light-grey w3-content" style="max-width:1600px">

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-bar-block w3-white w3-animate-left w3-text-grey w3-collapse w3-top w3-center" style="z-index:3;width:300px;font-weight:bold" id="mySidebar"><br>
  <h3 class="w3-padding-64 w3-center"><b>WELCOME<br>${NAME}</b></h3>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-padding w3-hide-large">CLOSE</a>
  <a href="#" onclick="location.href='goback'; return false;" onclick="w3_close()" class="w3-bar-item w3-button">GO BACK</a> 
    <a href="#" onclick="location.href='logout'; return false;" class="w3-bar-item w3-button">LOG OUT</a>
</nav>

<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-white w3-xlarge w3-padding-16">
  <span class="w3-left w3-padding">WELCOME ${NAME}</span>
  <a href="javascript:void(0)" class="w3-right w3-button w3-white" onclick="w3_open()"  >+</a>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px">

  <!-- Push down content on small screens --> 
  <div class="w3-hide-large" style="margin-top:83px"></div>
  

  <!-- About section -->
  <div class="w3-container w3-dark-grey w3-center w3-text-light-grey w3-padding-32" id="about">
    <div class="w3-content w3-justify" style="max-width:600px">
		<div id="wrapper">
			<div id="header">	
				<h2>Add Weekly Data</h2>
			</div>		
		</div>
      	<div id="container">
			<h3 align="center">Input Data</h3>
				<table>
					<tr>
							<td>Date</td>
							<td><form:input	path="date" placeholder=" dd Mon yyyy"/></td>
					</tr>
				</table>
				<br>
				<table class="GeneratedTable">
					
    				<tr>
      					<th></th>
      					<th>Expenditure</th>
                		<th>Earnings</th>
    				</tr>
  					<tbody>
      					<tr>
     						<th>Monday</th>
							<td><form:input	path="exp1" /></td>
							<td><form:input	path="ear1" /></td>
    					</tr>
      					<tr>
     						<th>Tuesday</th>
							<td><form:input	path="exp2" /></td>
							<td><form:input	path="ear2" /></td>
    					</tr>
    					<tr>
         					<th>Wednesday</th>
							<td><form:input	path="exp3" /></td>
							<td><form:input	path="ear3" /></td>
    					</tr>
        				<tr>
         					<th>Thursday</th>
							<td><form:input	path="exp4" /></td>
							<td><form:input	path="ear4" /></td>
    					</tr>
            			<tr>
         					<th>Friday</th>
							<td><form:input	path="exp5" /></td>
							<td><form:input	path="ear5" /></td>
    					</tr>
            			<tr>
         					<th>Saturday</th>
							<td><form:input	path="exp6" /></td>
							<td><form:input	path="ear6" /></td>
    					</tr>
            			<tr>
         					<th>Sunday</th>
							<td><form:input	path="exp7" /></td>
							<td><form:input	path="ear7" /></td>
    					</tr>
      				</tbody>
      			</table>
			<p><input type="submit" value="Save Data" class="save"></p>

	</div>
      </div>
      </div>
    </div>

  
<script>
// Script to open and close sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
<<<<<<< HEAD


=======
>>>>>>> branch 'ushrivas' of https://github.com/ushrivas9/252-Lab6
</script>
</body>
</html>

