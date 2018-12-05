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
							<td>Date</td>
							<td><form:input	path="date" /></td>
						</tr>
						<tr>
						</tr>
						<tr>
							<td><label>           </label></td>
							<td><label>Monday</label></td>
							<td><label>Tuesday</label></td>
							<td><label>Wednesday</label></td>
							<td><label>Thursday</label></td>
							<td><label>Friday</label></td>
							<td><label>Saturday</label></td>
							<td><label>Sunday</label></td>
						</tr>
						<tr>
							<td>Expenditure</td>
							<td><form:input	path="exp1" /></td>
							<td><form:input	path="exp2" /></td>
							<td><form:input	path="exp3" /></td>
							<td><form:input	path="exp4" /></td>
							<td><form:input	path="exp5" /></td>
							<td><form:input	path="exp6" /></td>
							<td><form:input	path="exp7" /></td>
						</tr>
						<tr>
							<td>Earnings</td>
							<td><form:input	path="ear1" /></td>
							<td><form:input	path="ear2" /></td>
							<td><form:input	path="ear3" /></td>
							<td><form:input	path="ear4" /></td>
							<td><form:input	path="ear5" /></td>
							<td><form:input	path="ear6" /></td>
							<td><form:input	path="ear7" /></td>
						</tr>
						<tr>
							<td><label></label></td>
							<td><input type="submit" value="Save Data" class="save"/></td>
						</tr>
					</tbody>
				</table>
			</form:form>
		</div>
	</body>
</html>