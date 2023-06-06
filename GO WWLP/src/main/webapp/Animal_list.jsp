<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.csm.gwwp2.Animal2"%>
<%@ page import="com.csm.gwwp1.Animal"%>
<%@ page import="com.csm.gwwp.DBManager"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
table, td, th {
	border: 1px solid black;
}

table {
	border-collapse: collapse;
	width: 100%;
}

th {
	height: 70px;
}
</style>

</head>
<body>

	<%
try {
	
	DBManager dbMgr = new DBManager();
	dbMgr.getConnection();
				
	Animal2 dMgr = new Animal2();
	ArrayList<Animal> animal = dMgr.fetchAll();


%>
	<table border="1">
		<tr>
			<th>Animal ID</th>
			<th>Animal Name</th>
			<th>Animal Gender</th>
			<th>Year Arrived</th>
			<th>Enclosure ID</th>
			<th>Keeper ID</th>
			<th>Species ID</th>
			<th>Diet_ID</th>
		</tr>
		<%
      for(Animal animals : animal){
     	     
      %>
		<tr>
			<td><%=animals.getAnimalId()%></td>
			<td><%=animals.getAnimalName()%></td>
			<td><%=animals.getAnimalGender()%></td>
			<td><%=animals.getYearArrived()%></td>
			<td><%=animals.getEnclosureId()%></td>
			<td><%=animals.getKeeperId()%></td>
			<td><%=animals.getSpeciesId()%></td>
			<td><%=animals.getDietId()%></td>

			<td><a href="edit_course.jsp?id= <%=animals.getAnimalId()%>">Edit
					Diet</a></td>
			<td><a href="delete_course.jsp?id= <%=animals.getAnimalId()%>">Delete
					Diet</a></td>

		</tr>
		<%
          } 
     %>

	</table>

	<%
}catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}
%>

</body>
</html>