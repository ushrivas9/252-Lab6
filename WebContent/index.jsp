<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
  <head>
  	
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome, please log in</title>
    
    <link rel="stylesheet" href="$(pageContent.request.contextPath)/resources/css/styles.css">

  </head>
  <body>
      
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
  </body>
</html>
