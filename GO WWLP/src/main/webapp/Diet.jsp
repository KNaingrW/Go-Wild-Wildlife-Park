<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background-image: url('./img/index3.avif');
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
height: 150px;
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
	<form action="Diet_action.jsp">

		Diet Type: <input type="text" name="D_type" required><br>
		<br> Number of feeds: <input type="number" name="num_of_feed"required><br>
		<br> 
		<button type="Submit" class="Save">Save</button>
		<button type="reset" class="Clear">Clear</button>


	</form>
</div>
</body>
</html>