<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.csm.gwwp2.Diet2"%>
<%@ page import="com.csm.gwwp1.Diet"%>
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
				
	Diet2 dMgr = new Diet2();
	ArrayList<Diet> diet = dMgr.fetchAll();


%>
	<table border="1">
		<tr>
			<th>Diet ID</th>
			<th>Diet Type</th>
			<th>Number of feeds</th>
		</tr>
		<%
      for(Diet diets : diet){
     	 
     	 
      
      %>
		<tr>
			<td><%=diets.getDietId()%></td>
			<td><%=diets.getDietType()%></td>
			<td><%=diets.getNumberofFeeds()%></td>

			<td><a href="edit_course.jsp?id= <%=diets.getDietId()%>">Edit
					Diet</a></td>
			<td><a href="delete_course.jsp?id= <%=diets.getDietId()%>">Delete
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