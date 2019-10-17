<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<h1 align ="center">
            Operator Deletion Page
        </h1>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Page title -->
    <title>DTH | Operator Deletion Page</title>

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

<!-- Header -->
<div id="header">
    <div class="color-line">
    </div>
    <div id="logo" class="light-version">
    </div>
<script>
function Deletion()
{
	alert("This action Cannot be Undone. Are you Sure?")
	window.location="Deletion_success_page.jsp"
	}
</script>
<div class="row">
    <div class="col-lg-6">
        <div class="hpanel">
           
            <div class="panel-body float-e-margins">
                <p>
                    Enter Operator ID to perform Deletion.
                </p>
<body>
 <form action="Mainservlet?action=deleteoperator" method="post">
<p>Enter the Operator ID: <input type="text" name="retid" value="" placeholder="Operator ID">
<button onclick="Deletion()">Delete</button>
</form>

</body>
</div>
</html>
</html>