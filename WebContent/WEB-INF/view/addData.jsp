<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<style>
table.GeneratedTable {
  width: 100%;
  background-color: #ffffff;
  border-collapse: collapse;
  border-width: 2px;
  border-color: #3399ff;
  border-style: solid;
  color: #000000;
}

table.GeneratedTable td{
  border-width: 2px;
  border-color: #3399ff;
  border-style: solid;
  padding: 3px;
}

table.GeneratedTable th {
  border-width: 2px;
  border-color: #3399ff;
  border-style: solid;
  padding: 3px;
  background-color: #99ccff;
}


</style>

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
			<h3 align="center">Save Data</h3>
			<form:form action="saveData" modelAttribute="Elem" method="POST" autocomplete="off">
            
<table class="GeneratedTable">
    <tr>
      <th></th>
                        	    <th>Monday</th>
   								<th>Tuesday</th>
    							<th>Wednesday</th>
    							<th>Thursday</th>
    							<th>Friday</th>
    							<th>Saturday</th>
    							<th>Sunday</th>
    </tr>
  <tbody>
      <tr>
      <th>Expenditure</th>
	<td><form:input	path="exp1" /></td>
	<td><form:input	path="exp2" /></td>
	<td><form:input	path="exp3" /></td>
	<td><form:input	path="exp4" /></td>
	<td><form:input	path="exp5" /></td>
	<td><form:input	path="exp6" /></td>
	<td><form:input	path="exp7" /></td>
    </tr>
    <tr>
      <th>Earnings</th>
							<td><form:input	path="ear1" /></td>
							<td><form:input	path="ear2" /></td>
							<td><form:input	path="ear3" /></td>
							<td><form:input	path="ear4" /></td>
							<td><form:input	path="ear5" /></td>
							<td><form:input	path="ear6" /></td>
							<td><form:input	path="ear7" /></td>
    </tr>
      </tbody>
      </table>
		<p><input type="submit" value="Save Data" class="save"></p>
			</form:form>
		</div>
</body>
</html>


