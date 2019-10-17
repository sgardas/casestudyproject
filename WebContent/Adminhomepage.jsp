
<!DOCTYPE html>
<html>
<head><h1 align = "center">
<style>

button-group :hover{
font-size:350;
}
</style>
ADMIN HOME PAGE
</h1>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Page title -->
    <title>DTH | Admin Home Page</title>
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
<div id="header">
    <div class="color-line">
    </div>
    <div id="logo" class="light-version">  
    </div>
 

<div class="row">
        <div class="hpanel">
            <div class="panel-body float-e-margins">
                <p>
                    Select action to perform from the drop down menu.
                </p>

                <div class="btn-group">
                    <button data-toggle="dropdown" class="btn btn-primary dropdown-toggle">Operator Management <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                        <li><a href="createoperator.jsp">Create Operators</a></li>
                        <li><a href="updateoperator.jsp" class="font-bold">Update Operators</a></li>
                        <li><a href="viewoperator.jsp">View Operators</a></li>
                         <li><a href="deleteoperator.jsp">Delete Operators</a></li>

                    </ul>
                </div>
               
                <div class="btn-group">
                    <button data-toggle="dropdown" class="btn btn-primary dropdown-toggle">Customer Management <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                        <li><a href="CreateCustomer.jsp">Create Customers</a></li>
                        <li><a href="UpdateCustomerpage.jsp" class="font-bold">Update Customers</a></li>
                        <li><a href="customerview.jsp">View Customers</a></li>
                         <li><a href="DeleteCustomer.jsp">Delete Customers</a></li>
                    </ul>
                </div>
                
                 <div class="btn-group">
                    <button data-toggle="dropdown" class="btn btn-primary dropdown-toggle">Retailer Management <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                        <li><a href="Admin_retailer.jsp">Create Retailers</a></li>
                        <li><a href="Retailer_Updation.jsp" class="font-bold">Update Retailers</a></li>
                        <li><a href="View_Retailers.jsp">View Retailers</a></li>
                         <li><a href="Retailer_Deletion.jsp">Delete Retailers</a></li>
                      
                    </ul>
                </div>
                 <div class="btn-group">
                    <button data-toggle="dropdown" class="btn btn-primary dropdown-toggle">Manage Channels <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                        <li><a href="#">Add Channels</a></li>
                        <li><a href="#" class="font-bold">Update Channel details</a></li>
                        <li><a href="#">Delete Channel</a></li>
                         <li><a href="#">View Channels</a></li>
                    </ul>
                </div>
                 <div class="btn-group">
                    <button data-toggle="dropdown" class="btn btn-primary dropdown-toggle">Manage Channel Packages <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                        <li><a href="#">Add Package</a></li>
                        <li><a href="#" class="font-bold">Update Package</a></li>
                        <li><a href="#">Delete Package</a></li>
                         <li><a href="#">Show all available Packages</a></li>
                    </ul>
                </div>
                <div class="btn-group">
                    <button data-toggle="dropdown" class="btn btn-primary dropdown-toggle">Manage Set-Top Boxes <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                        <li><a href="#">Create SetTopbox</a></li>
                        <li><a href="#" class="font-bold"> Update SetTopBox</a></li>
                        
                    </ul>
             </div>
           </div>
         </div>
        </div>
     </div>
   </div>
</div>

<!-- Vendor scripts -->
<script src="vendor/jquery/dist/jquery.min.js"></script>
<script src="vendor/jquery-ui/jquery-ui.min.js"></script>
<script src="vendor/slimScroll/jquery.slimscroll.min.js"></script>
<script src="vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="vendor/metisMenu/dist/metisMenu.min.js"></script>
<script src="vendor/iCheck/icheck.min.js"></script>
<script src="vendor/sparkline/index.js"></script>

<!-- App scripts -->
<script src="scripts/homer.js"></script>

</body>
</html>