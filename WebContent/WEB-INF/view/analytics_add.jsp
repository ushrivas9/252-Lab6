<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<script>
	document.write("<style>body{zoom:65%;}</style>");
</script>

  <head>  	
    <meta charset="utf-8">
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
  			<div id="container">
  				<div id="content">
  					<input type="button" value="Add Week Data"
  						onclick="window.location.href='showFormForAdd'; return false;"/>
  				</div>
  			</div>
  		</div>
  </body>
</html>

