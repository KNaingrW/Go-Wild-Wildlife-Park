<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background-image: url('./img/index1.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
	text-align: center;
	color: rgb(33,33,33);
	font-weight: bold;
	font-family: system-ui;
}
div{
 background-color: rgb(191, 191, 191, 0.7);
border: 2px;
width: 200px;
height: 350px;
margin-left: 500px;
margin-top: 50px;
padding: 10px;
border-radius: 50px;

}
.Save{
background-color: green;
color: white;
border: none;
border-radius: 10px;
padding: 5px;
}
.Clear{
background-color: red;
color: white;
border: none;
border-radius: 10px;
padding: 5px;
}
</style>
</head>
<body>
<div>
	<form action="Animal_action.jsp">

		Animal Name: <input type="text" name="A_Name" required><br>
		Animal Gender: <input type="text" name="Gender" required><br>
		Year Arrived: <input type="number" name="Year_Arrived"required><br>
		Enclosure ID: <input type="number" name="E_ID" required><br>
		Keeper ID: <input type="number" name="K_ID" required><br>
		Species ID: <input type="number" name="S_ID" required><br>
		Diet ID: <input type="number" name="D_ID" required><br>
		<br> 
		<button type="submit" class="Save">Save</button>
		<button type="reset" class="Clear">Clear</button>

	</form>
</div>
</body>
</html>