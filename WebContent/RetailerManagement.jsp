<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head> 

<script>
function update_Retailer(){
	alert("Are you sure you want to update an existing Retailer?")
	window.location="Retailer_Updation.jsp"
	return true ;
}
</script>

<script>
function delete_Retailer(){
	
	alert("Are you Sure you want to delete an existing retailer?")
	
window.location="Retailer_Deletion.jsp";
return true;
}
</script>

<h1> Retailer Management </h1>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name= "retialermanagement" > </form>
 <button onclick="window.location.href='Admin_retailer.jsp'">Add New Retailer</button><br><br>
 <button onclick= "update_Retailer()">Update Existing Retailer</button><br><br>
 <button onclick="delete_Retailer()"> Delete Existing Retailer</button>
 
 

</body>
</html>