<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><h1> Update Customer Page</h1>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UpdateCustomerPage</title>
</head>


<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Page title -->
    <title>DTH | Retailer Deletion Page</title>

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
<body class="fixed-navbar fixed-sidebar">


    <div class="color-line">
    

<hr>
<div align="center">
<form name="log" action="<%=request.getContextPath()%>/InfinityController?actionCheck=login" method="post">
Customer Id  <input type="text" name="custId" value="" required title="Enter custId" placeholder="Enter customer Id" onmouseover="javascript.alert('title')"/>
<br></br>
First name <input type="text" name="firstname" value="" required title="Enter firstname" placeholder="Enter firstname" onmouseover="javascript.alert('title')"/>
 <br><br>
Last name <input type="text" name="lastname" value="" required title="Enter lastname" placeholder="Enter lastname" onmouseover="javascript.alert('title')"/>
<br><br>
Email Id  <input type="email" name="emailid" value="" required title="Enter email" placeholder="Enter your email" onmouseover="javascript.alert('title')"/>
<br></br>
Phone Number  <input type="text" name="Phoneno" value="" required title="Enter lastname" placeholder="Enter phone number" onmouseover="javascript.alert('title')"/>
<br></br>
Address  <input type="text" name="address" value="" required title="Enter address" placeholder="Enter address" onmouseover="javascript.alert('title')"/>
<br></br>
Landmark  <input type="text" name="landmark" value="" required title="Enter landmark" placeholder="Enter landmark" onmouseover="javascript.alert('title')"/>
<br></br>
State  <input type="text" name="state" value="" required title="Enter state" placeholder="Enter state" onmouseover="javascript.alert('title')"/>
<br></br>
City  <input type="text" name="city" value="" required title="Enter city" placeholder="Enter city" onmouseover="javascript.alert('title')"/>
<br></br>
Zipcode  <input type="text" name="zipcode" value="" required title="Enter zipcode" placeholder="Enter zipcode" onmouseover="javascript.alert('title')"/>
<br></br>


<input type="submit" value="Update"/>

 </form>
 </div>

</body>
</html>