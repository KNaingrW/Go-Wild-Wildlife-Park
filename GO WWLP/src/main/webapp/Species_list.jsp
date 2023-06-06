<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.csm.gwwp2.Species2"%>
<%@ page import="com.csm.gwwp1.Species"%>
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
				
	Species2 dMgr = new Species2();
	ArrayList<Species> species = dMgr.fetchAll();
%>
	<table border="1">
		<tr>
			<th>Species ID</th>
			<th>Species Type</th>
			<th>Species Group</th>
			<th>Lifestyle</th>
			<th>Conservation Status</th>
		</tr>
		<%
      for(Species specie : species){     
      %>
		<tr>
			<td><%=specie.getSpeciesId()%></td>
			<td><%=specie.getSpeciesType()%></td>
			<td><%=specie.getSpeciesGroup()%></td>
			<td><%=specie.getLifeStyle()%></td>
			<td><%=specie.getConservationStatus()%></td>
			<td><a href="edit_course.jsp?id= <%=specie.getSpeciesId()%>">Edit
					Species</a></td>
			<td><a href="delete_course.jsp?id= <%=specie.getSpeciesId()%>">Delete
					Species</a></td>

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