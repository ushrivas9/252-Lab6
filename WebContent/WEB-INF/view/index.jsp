<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<title>Small Business Analytics</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
body {font-family: "Times New Roman", Georgia, Serif;}
h1,h2,h3,h4,h5,h6 {
    font-family: "Playfair Display";
    letter-spacing: 5px;
}
</style>
<body>

<<<<<<< HEAD
<script>
	document.write("<style>body{zoom:65%;}</style>");
</script>

  <head>  	
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome, please log in</title>
    
    <link type="text/css"
    	  rel="stylesheet"
    	  href="${pageContext.request.contextPath}/resources/css/styles.css">
  </head>
  <body>
  <!-- Check if putting in body will make css work -->
  		<div id="container">
  			<h3 align="center">Login</h3>
  			<form:form action="saveUser" modelAttribute="Elem1" method="POST" autocomplete="off">
  				<table align="center">
=======
<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-padding w3-card" style="letter-spacing:4px;">
    <h5 class="w3-bar-item w3-button">Small Business Analytics</h3>
    <!-- Right-sided navbar links. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <form:form action="saveUser" modelAttribute="Elem1" method="POST" autocomplete="off">
  				<table>
>>>>>>> branch 'ushrivas' of https://github.com/ushrivas9/252-Lab6
  					<tbody>
  						<tr>
  							<td><label>Username</label></td>
							<td><form:input	path="username" /></td><br>
						
							<td><label>Password</label></td>
<<<<<<< HEAD
							<td><form:input	path="password" /></td><br>
  						</tr>
  						<tr>
=======
							<td><form:input	path="password" /></td>
  			
>>>>>>> branch 'ushrivas' of https://github.com/ushrivas9/252-Lab6
							<td><label></label></td>
							<td><input type="submit" value="Login" class="save"/></td>
						</tr>
  					</tbody>
  				</table>
<<<<<<< HEAD
  			</form:form>
  		</div> 
  		
  		
  </body>
</html>
=======
  		</form:form>
    </div>
  </div>
</div>

<!-- Header -->
<header class="w3-display-container w3-content w3-wide" style="max-width:1600px;min-width:500px" id="home">
  <img class="w3-image" src="hamburger.jpg" alt="No Image2" width="1600" height="800">
  <div class="w3-display-bottomleft w3-padding-large w3-opacity">
  </div>
</header>

</body>
</html>


>>>>>>> branch 'ushrivas' of https://github.com/ushrivas9/252-Lab6
