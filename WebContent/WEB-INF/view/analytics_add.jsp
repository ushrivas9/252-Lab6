<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" %>
<%@ page import="java.util.ArrayList" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<title>AASTHA'S WORK NOT REALLY</title>
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
  <h3 class="w3-padding-64 w3-center"><b>WELCOME<br>LOSER</b></h3>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-padding w3-hide-large">CLOSE</a>
  <a href="#" onclick="w3_close()" class="w3-bar-item w3-button">YOUR DATA</a> 
  <a href="#divide" onclick="w3_close()" class="w3-bar-item w3-button">GRAPHS</a>
   <a href="#" onclick="location.href='showFormForAdd'; return false;" class="w3-bar-item w3-button">ADD DATA</a>
       <a href="#" onclick="location.href='logout'; return false;" class="w3-bar-item w3-button">LOG OUT</a>
</nav>

<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-white w3-xlarge w3-padding-16">
  <span class="w3-left w3-padding">SOME NAME</span>
  <a href="javascript:void(0)" class="w3-right w3-button w3-white" onclick="w3_open()">=</a>
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

      <h2 class="w3-padding-16">Your Data</h2>
      <div>
          				<table >
  					<tr>
  						<td>Date</td>
  						<td>Earnings</td>
  						<td>Expenditure</td>
  					</tr>
  						<c:forEach var="tempElem"  items="${List}">
							<tr>	
								<td>${tempElem.date}</td>
								<td>${tempElem.earning}</td>
								<td>${tempElem.expenditure}</td>
							</tr>
						</c:forEach>
  				</table>
      </div>

      <div class="w3-white">
        
      </div>
    
      <div class="w3-white">
      </div>
      </div>
      </div>
      <hr class="w3-opacity" id="divide">


  <!-- Contact section -->
  <div class="w3-container w3-light-grey w3-padding-32 w3-padding-large" id="contact">
    <div class="w3-content" style="max-width:600px">
      <h4 class="w3-center"><b>Visual Data</b></h4>
      <p>This is your increase and decrease profit in the form of monthly (taken 4 weeks at a time) graphs.</p>
      <div id="piechart">
  			<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  			
  			<script type="text/javascript">
			// Load google charts
			google.charts.load('current', {packages: ['corechart', 'line']});
			google.charts.setOnLoadCallback(drawChart);
			//var profits = [8, 6, 1, 7];
			var profits = '${STRING}';
			//alert(profits);
			
			var arrayFromJava = profits.split("|");
			 
			
			// Draw the chart and set the chart values
			function drawChart() {
  				var data = new google.visualization.DataTable();
  				data.addColumn('number', 'Week');
  				data.addColumn('number', 'Profit');
  				var i;
  				//data.addRow([0,0]);
  				for(i = 0; i < arrayFromJava.length; i++){
  					data.addRow([i+1, parseInt(arrayFromJava[i],10)]);
  				}
  				
  				// Optional; add a title and set the width and height of the chart
  				// var options = {'title':'My Average Day', 'width':550, 'height':400};
  
  				var options = {'title': 'Weekly Profit', 'width':550, 'height':300,
  				hAxis: {
    			title: 'Week'
    			},
    			vAxis: {
    				title: 'Amount'
    			},
    			colors: ['#a52714'],
    			};
  				// Display the chart inside the <div> element with id="piechart"
  				var chart = new google.visualization.LineChart(document.getElementById('piechart'));
  				chart.draw(data, options);
			}
		</script>		
  	</div>
      
    </div>
  </div>

  <!-- Footer -->
  <footer class="w3-container w3-padding-32 w3-grey">  
    <div class="w3-row-padding">
      <div class="w3-third">
        <h3>INFO</h3>
        <p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>      
      </div>
    
      
  
    </div>
  </footer>
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


</script>


</body>
</html>
