<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" %>
<%@ page import="java.util.ArrayList" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<script>
	document.write("<style>body{zoom:65%;}</style>");
</script>

  <head>  	
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome, please log in</title>
    
    <link type="text/css"
    	  rel="stylesheet"
    	  href="${pageContent.request.contextPath}/resources/css/styles.css">
  </head>
  <body>
  <!-- Check if putting in body will make css work -->
  		<div id="container">
  			<h3>Welcome</h3>
  			<div id="content">
  				<input type="button" value="Add Weekly Data"
  					onclick="window.location.href='showFormForAdd'; return false;"/>
  			</div>
  		</div>
  		<div id="container">
  			<div id="content">
  				<table>
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
  				
  				<h6>*All Earnings and Expenditures are displayed by week</h6>
  			</div>
  		</div>
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
			 
			alert(arrayFromJava);
			
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
  </body>
</html>

