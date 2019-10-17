
<!DOCTYPE html>
<html>
<head>
<script>


</script>


    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Page title -->
    <title>DTH | Login Page</title>

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

</head><div>

<p style="margin-top: 1em" align="center"> <font size="5" face="sans-serif" ><strong>ILP DTH Services</strong></font></div>
<body class="blank">
  


<div class="color-line"></div>


<div class="login-container">
    <div class="row">
        <div class="col-md-12">
            <div class="text-center m-b-md">
                <h3>PLEASE LOGIN/REGISTER</h3>
            </div>
            <div class="hpanel">
                <div class="panel-body">
                        <form action="Mainservlet?action=login" method="post""loginForm">
                            <div class="form-group">
                                <label class="control-label" for="username">Username</label>
                                <input type="text" placeholder="example@gmail.com" title="Please enter you username" required="" value="" name="username" id="username" class="form-control">
                                <span class="help-block small">Your unique username to app</span>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="password">Password</label>
                                <input type="password" title="Please enter your password" placeholder="******" required="" value="" name="password" id="password" class="form-control">
                                <span class="help-block small">Your strong password</span>
                            </div>
                            <div>
                            Role <select name="Role">
		<option value="Customer">Customer</option>
		<option value="Retailer">Retailer</option>
		<option value="Operator">Operator</option>
		<option value="Admin">Admin</option>
		</select>
		</div><br>
                            
                           
                           <input type="submit" class="btn btn-success btn-block" onclick="myFunction()" value="Login" >
                           </form>
                           <br>
                           <form action="Mainservlet?action=Customerregistration" method="post">
                           
                            <input type="submit" class="btn btn-success btn-block" onclick="myFunction()" value="Register" >
                           
                           </form>
                </div>
            </div>
        </div>
    </div>
   </div>
    <div class="row">
        <div class="col-md-12 text-center">
            <strong>Team-02</strong> login page 
    </div>
</div>


<footer>
  <strong><font size="5"><marquee>Try our packages at low prices. Offer lasts for a limited period only</marquee>  </strong> </font><br>
  <p><font size="4">For more info Contact us at: ilptcs@infinityservices.com</p></font>
</footer>

</body>
</html>