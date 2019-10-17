<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Page title -->
    <title>DTH | DeleteCustomerPage</title>

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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="lightblue">
<div>
<marquee>Customer Deletion</marquee>
</div>
<hr>
<div align="center">
<form action="Mainservlet?action=customerdelete" method="post">
Customer Id <input type="text" name="custId" value="" required title="Enter customerId" placeholder="Enter CustomerId" onmouseover="javascript.alert('title')"/>
 <br><br>
 <button onclick="window.location.href='Deletion_success_page.jsp'">Delete Customer</button>
 
 

 </form>
 </div>

</body>
</html>