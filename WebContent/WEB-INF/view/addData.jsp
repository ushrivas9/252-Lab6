<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Add Weekly Data</title>
	</head>
	
	<body>
		<div id="wrapper">
			<div id="header">	
				<h2>Add Weekly Data</h2>
			</div>		
		</div>
		
		<div id="container">
			<h3>Save Data</h3>
			<form:form action="saveData" modelAttribute="Elem" method="POST" autocomplete="off">
				<table>
					<tbody>
						<tr>
							<td><label>Monday</label></td>
							<td><form:input	path="soeid" /></td>
						</tr>
					</tbody>
				</table>
			</form:form>
		</div>
	</body>
</html>