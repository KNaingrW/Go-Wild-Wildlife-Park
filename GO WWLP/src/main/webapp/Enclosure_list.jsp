<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.csm.gwwp2.Enclosure2"%>
<%@ page import="com.csm.gwwp1.Enclosure"%>
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
				
	Enclosure2 dMgr = new Enclosure2();
	ArrayList<Enclosure> enclosures = dMgr.fetchAll();
%>
	<table border="1">
		<tr>
			<th>Enclosure ID</th>
			<th>Enclosure Location</th>
			<th>Enclosure Type</th>
		</tr>
		<%
      for(Enclosure enclosure : enclosures){      
      %>
		<tr>
			<td><%=enclosure.getEnclosureId()%></td>
			<td><%=enclosure.getEnclosureLocation()%></td>
			<td><%=enclosure.getEnclosureType()%></td>
			<td><a
				href="Enclosure_edit.jsp?id=<%=enclosure.getEnclosureId()%>">Edit
					Enclosure</a></td>
			<td><a
				href="Enclosure_delete.jsp?id=<%=enclosure.getEnclosureId()%>">Delete
					Enclosure</a></td>
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