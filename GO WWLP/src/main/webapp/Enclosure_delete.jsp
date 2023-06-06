<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.csm.gwwp.DBManager"%>
<%@ page import="com.csm.gwwp2.Enclosure2"%>
<%@ page import="com.csm.gwwp1.Enclosure"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Enclosure</title>
</head>
<body>

	<%
String enclosureId = request.getParameter("id");
Enclosure2 dao = new Enclosure2();
int rowsAffected;
try {
rowsAffected = dao.delete(Integer.parseInt(enclosureId));

}catch (ClassNotFoundException ex){
out.println( ex.getMessage());
}catch (SQLException e){
out.println(e.getMessage());

}
response.sendRedirect("Enclosure_list.jsp");
%>

</body>
</html>