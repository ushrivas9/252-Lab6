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
    <title>Error!</title>
    
  </head>
  <body>
  		<div id="container">
  			<h2>Error! Username already exists!</h3>
  		</div>
  		<p>
			<a href="${pageContext.request.contextPath}/userpage/login">Back to Login</a>
		</p>
  </body>
</html>