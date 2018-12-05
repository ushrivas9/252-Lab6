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
    

  </head>
  <body>
   <link type="text/css"
    	  rel="stylesheet"
    	  href="${pageContent.request.contextPath}/resources/css/styles.css">
  <!-- Check if putting in body will make css work -->
  		<div id="container">
  		<div class="login-page">
          <div class="form">
            <form class="register-form">
              <input type="text" placeholder="name"/>
              <input type="password" placeholder="password"/>
              <input type="text" placeholder="email address"/>
              <button>create</button>
              <p class="message">Already registered? <a href="#">Sign In</a></p>
            </form>
            <form class="login-form">
              <input type="text" placeholder="username"/>
              <input type="password" placeholder="password"/>
              <button>login</button>
              <p class="message">Not registered? <a href="#">Create an account</a></p>
            </form>
          </div>
        </div>
  			<%-- <h3>Login</h3>
  			<form:form action="saveUser" modelAttribute="Elem1" method="POST" autocomplete="off">
  				<table>
  					<tbody>
  						<tr>
  							<td><label>Username</label></td>
							<td><form:input	path="username" /></td>
						
							<td><label>Password</label></td>
							<td><form:input	path="password" /></td>
  						</tr>
  						<tr>
							<td><label></label></td>
							<td><input type="submit" value="Login" class="save"/></td>
					</tr>
  					</tbody>
  				</table>
  			</form:form> --%>
  		</div>
  </body>
</html>

