<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Operator Update Form</title>
</head>
<body>
<h1>Operator update Form</h1>
 <form action="Mainservlet?action=updateoperator" method="post">
			<table style="with: 50%">
				<tr>
					<td>Operator_Id</td>
					<td><input type="text" name="Operator_Id" /></td>
				</tr>
				<tr>
					<td>First Name</td>
					<td><input type="text" name="first_name" /></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><input type="text" name="last_name" /></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email" /></td>
				</tr>
					
				
				<tr>
					<td>shift start time</td>
					<td><input type="time" name="start time" /></td>
				</tr>
				<tr>
					<td>shift end time</td>
					<td><input type="time" name="End time" /></td>
				</tr>
				<tr>
					<td>Contact No</td>
					<td><input type="text" name="contact" /></td>
				</tr>
				<tr>
					<td>Max. no. of Customers to be managed</td>
					<td><input type="text" name="max customers" /></td>
				</tr>
				<tr>
					<td>Creation Date</td>
					<td><input type="text" name="creation date" /></td>
				</tr>
				
				
				</table>
			<input type="submit" value="Submit" /></form>
</body>
</html>