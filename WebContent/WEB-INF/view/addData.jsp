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
<<<<<<< HEAD

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


=======
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
>>>>>>> branch 'ushrivas' of https://github.com/ushrivas9/252-Lab6
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
			<h3 align="center">Input Data</h3>
<<<<<<< HEAD

=======
>>>>>>> branch 'ushrivas' of https://github.com/ushrivas9/252-Lab6
			<form:form action="saveData" modelAttribute="Elem" method="POST" autocomplete="off">
<<<<<<< HEAD
            
<table class="GeneratedTable">
    <tr>
      <th></th>
      							 <th>Expenditure</th>
                                 <th>Earnings</th>
    </tr>
  <tbody>
      <tr>
     <th>Monday</th>
	<td><form:input	path="exp1" /></td>
	<td><form:input	path="ear1" /></td>

    </tr>
      <tr>
     <th>Tuesday</th>
	<td><form:input	path="exp2" /></td>
	<td><form:input	path="ear2" /></td>
    </tr>
    <tr>
         <th>Wednesday</th>
	<td><form:input	path="exp3" /></td>
	<td><form:input	path="ear3" /></td>
    </tr>
        <tr>
         <th>Thursday</th>
	<td><form:input	path="exp4" /></td>
	<td><form:input	path="ear4" /></td>
    </tr>
            <tr>
         <th>Friday</th>
	<td><form:input	path="exp5" /></td>
	<td><form:input	path="ear5" /></td>
    </tr>
            <tr>
         <th>Saturday</th>
	<td><form:input	path="exp6" /></td>
	<td><form:input	path="ear6" /></td>
    </tr>
                <tr>
         <th>Sunday</th>
	<td><form:input	path="exp7" /></td>
	<td><form:input	path="ear7" /></td>
    </tr>
      </tbody>
      </table>
		<p><input type="submit" value="Save Data" class="save"></p>
=======
				<table>
					<tr>
							<td>Date</td>
							<td><form:input	path="date" placeholder=" ddMonyyyy"/></td>
					</tr>
				</table>
				<br>
				<table class="GeneratedTable">
					
    				<tr>
      					<th></th>
      					<th>Expenditure</th>
                		<th>Earnings</th>
    				</tr>
  					<tbody>
      					<tr>
     						<th>Monday</th>
							<td><form:input	path="exp1" /></td>
							<td><form:input	path="ear1" /></td>
    					</tr>
      					<tr>
     						<th>Tuesday</th>
							<td><form:input	path="exp2" /></td>
							<td><form:input	path="ear2" /></td>
    					</tr>
    					<tr>
         					<th>Wednesday</th>
							<td><form:input	path="exp3" /></td>
							<td><form:input	path="ear3" /></td>
    					</tr>
        				<tr>
         					<th>Thursday</th>
							<td><form:input	path="exp4" /></td>
							<td><form:input	path="ear4" /></td>
    					</tr>
            			<tr>
         					<th>Friday</th>
							<td><form:input	path="exp5" /></td>
							<td><form:input	path="ear5" /></td>
    					</tr>
            			<tr>
         					<th>Saturday</th>
							<td><form:input	path="exp6" /></td>
							<td><form:input	path="ear6" /></td>
    					</tr>
            			<tr>
         					<th>Sunday</th>
							<td><form:input	path="exp7" /></td>
							<td><form:input	path="ear7" /></td>
    					</tr>
      				</tbody>
      			</table>
			<p><input type="submit" value="Save Data" class="save"></p>
>>>>>>> branch 'ushrivas' of https://github.com/ushrivas9/252-Lab6
			</form:form>
<<<<<<< HEAD
		</div>
</body>
</html>


=======
	</div>
</body>
</html>
>>>>>>> branch 'ushrivas' of https://github.com/ushrivas9/252-Lab6
