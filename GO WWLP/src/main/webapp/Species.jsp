<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
body {
	background-image: url('./img/index6.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
	text-align: center;
	color: rgb(136, 68, 68);
	font-weight: bold;
	font-family: system-ui;
}
div{
 background-color: rgb(191, 191, 191, 0.7);
border: 2px;
width: 200px;
height: 300px;
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
	<form action="Species_action.jsp">

		Species Type: <input type="text" name="S_type" required><br>
		<br> Species Group: <input type="text" name="S_group" required><br>
		<br> Lifestyle: <input type="text" name="Lifestyle" required><br>
		<br> Conservation_status: <input type="text"
			name="Conservation_status" required><br>
		<br>
		<button type="Submit" class="Save">Save</button>
		<button type="reset" class="Clear">Clear</button>

	</form>
</div>

</body>
</html>