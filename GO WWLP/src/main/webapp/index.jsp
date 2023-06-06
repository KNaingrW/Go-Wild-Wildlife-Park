<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #CF225C;
}

li {
	float: left;
}

li a, .dropbtn {
	display: inline-block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
	background-color: #C7B5BB;
}

li.dropdown {
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #CF4122;
}

.dropdown:hover .dropdown-content {
	display: block;
}

body {
	background-image: url('./img/index.jpg');
	background-repeat: no-repeatt;
	background-attachment: fixed;
	background-size: cover;
}

.to {
	font-family: Arial;
	font-weight: bold;
	font-size: 30px;
	text-align: center;
	color: rgb(255, 128, 128);
}

.can {
	font-family: Arial;
	font-weight: bold;
	font-size: 30px;
	text-align: center;
	color: rgb(255, 128, 128);
}
</style>

</head>
<body>

	<ul>

		<li><a href="#home">Home</a></li>

		<li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Animal</a>
			<div class="dropdown-content">
				<a href="Animal.jsp">Add Animal Information</a> <a
					href="Animal_list.jsp">View Animal Information</a>

			</div></li>

		<li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Diet</a>
			<div class="dropdown-content">
				<a href="Diet.jsp">Add Diet Information</a> <a href="Diet_list.jsp">View
					Diet Information</a>

			</div></li>

		<li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Enclosure</a>
			<div class="dropdown-content">
				<a href="Enclosure.jsp">Add Enclosure Information</a> <a
					href="Enclosure_list.jsp">View Enclosure Information</a>


			</div></li>

		<li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Keeper</a>
			<div class="dropdown-content">
				<a href="Keeper.jsp">Add Keeper Information</a> <a
					href="keeper_list.jsp">View Keeper Information</a>


			</div></li>



		<li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Species</a>
			<div class="dropdown-content">
				<a href="Species.jsp">Add Species Information</a> <a
					href="Species_list.jsp">View Species Information</a>


			</div></li>
	</ul>

	<p class="to">Welcome to Go Wild WildLife Park</p>
	<p class="can">Where you can see 1000 animals</p>

</body>
</html>