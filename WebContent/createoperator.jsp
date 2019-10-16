
<!DOCTYPE html>
<html>
<head>
<script>


</script>


    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Page title -->
    <title>Operator registration form</title>

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

</head><div><marquee><strong>Infinity DTH Services</strong></marquee></div>
<body class="blank">
  
<!-- Simple splash screen-->
<!--  <div class="splash"> <div class="color-line"></div><div class="splash-title"><h1>Homer - Responsive Admin Theme</h1><p>Special Admin Theme for small and medium webapp with very clean and aesthetic style and feel. </p><div class="spinner"> <div class="rect1"></div> <div class="rect2"></div> <div class="rect3"></div> <div class="rect4"></div> <div class="rect5"></div> </div> </div> </div>-->
<!--[if lt IE 7]>
<p class="alert alert-danger">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]--> 

<div class="color-line"></div>


<div class="login-container">
    <div class="row">
        <div class="col-md-12">
            <div class="text-center m-b-md">
                <h3>CREATE OPERATOR</h3>
            </div>
            <div class="hpanel">
                <div class="panel-body">
                        <form action="#" id="loginForm">
                            
                            <div class="form-group">
                                <label class="control-label" for="firstname">Firstname</label>
                                <input type="text" title="Please enter your firstname" placeholder="enter your firstname" required="" value="" name="firstname" id="firstname" class="form-control">                         
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="lastname">Lastname</label>
                                <input type="text" title="Please enter your lastname" placeholder="enter your lastname" required="" value="" name="lastname" id="lastname" class="form-control">
                            </div>   
                            
                            <div class="form-group">
                                <label class="control-label" for="emailid">Email Id</label>
                                <input type="email" placeholder="example@gmail.com" title="enter your email id" required="" value="" name="email" id="email" class="form-control">
                                
                            </div>   
                            <div class="form-group">
                                <label class="control-label" for="phoneno">Phone number (format: xxx-xxx-xxxx)</label>
                                <input type="tel"  pattern="^\d{3}-\d{3}-\d{4}$" required placeholder="enter your phone no" title="Please enter your Phone no" required="" value="" name="phonenum" id="phonenum" class="form-control">
                            </div>  
                            <div class="form-group">
                                <label class="control-label" for="shift start time">Shift Start time Format: DD.MM.YYYY</label>
                                <input type="text" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01]).(0[1-9]|1[012]).[0-9]{4}" id="24h"/ placeholder="enter your Shift start time" title="Please enter your shift start time" required="" value="" name="shift start time" id="shift start time" class="form-control">
                            </div> 
                            <div class="form-group">
                                <label class="control-label" for="shift End time">Shift End time Format: DD.MM.YYYY</label>
                                <input type="text" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01]).(0[1-9]|1[012]).[0-9]{4}" placeholder="enter your Shift end time" title="Please enter your shift end time" required="" value="" name="shift end time" id="shift end time" class="form-control">
                            </div>
                            
                            <div class="form-group">
                                <label class="control-label" for="city">Max no of customers to be managed</label>
                                <input type="text" placeholder="enter maximum no of customers to be managed" title="Please enter maximum number of customers to be managed" required="" value="" name="max no of customers" id="max customers" class="form-control">
                            </div> 
                            <div class="form-group">
                                <label class="control-label" for="creation date">Creation date</label>
                                <input type="text" placeholder="enter your Creation date" title="Please enter your creation date" required="" value="" name="creation date" id="creation date" class="form-control">
                            </div> 
                            <style>
.button {
  border-radius: 4px;
  background-color: Green;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 20px;
  padding: 5px;
  width: 370px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>

<button class="button" onclick="myFunction()"><span>Create Me!</span></button>
                         
                        </form>
                </div>
            </div>
        </div>
    </div>
   
    <div class="row">
        <div class="col-md-12 text-center">
    </div>
</div>
</body>
</html>