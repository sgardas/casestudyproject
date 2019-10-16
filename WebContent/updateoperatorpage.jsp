<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Operator Update Form</title>
</head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Page title -->
    <title>DTH | Operator Home Page</title>

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <!--<link rel="shortcut icon" type="image/ico" href="favicon.ico" />-->

    <!-- Vendor styles -->
    <link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.css" />
    <link rel="stylesheet" href="vendor/metisMenu/dist/metisMenu.css" />
    <link rel="stylesheet" href="vendor/animate.css/animate.css" />
    <link rel="stylesheet" href="vendor/bootstrap/dist/css/bootstrap.css" />

    <!-- App styles -->
    <link rel="stylesheet" href="fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css" />
    <link rel="stylesheet" href="fonts/pe-icon-7-stroke/css/helper.css" />
    <link rel="stylesheet" href="styles/style.css">

</head>


<!-- Header -->
<div id="header" align="center">
    <div class="color-line">
    </div>
    
        



<div class="row">
    
        <div class="hpanel" align="center">
            
            <div class="panel-body float-e-margins" >
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
				<br>
				<br>
			<input type="submit" value="Submit" /></form>
</body>
</html>