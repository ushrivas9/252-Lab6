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
  			<h1>Error! Username Doesn't Match Password</h1>
  		</div>
  		
  		<p>
			<a href="${pageContext.request.contextPath}/userpage/login" style="font-size:40px">Back to Login</a>
		</p>
  </body>
</html>