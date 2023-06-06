<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.csm.gwwp.DBManager"%>
<%@ page import="com.csm.gwwp2.Keeper2"%>
<%@ page import="com.csm.gwwp1.Keeper"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Keeper</title>
</head>
<body>
	<%
String keeperId = request.getParameter("id");
Keeper2 dao = new Keeper2();
int rowsAffected;
try {
rowsAffected = dao.delete(Integer.parseInt(keeperId));

}catch (ClassNotFoundException ex){
out.println( ex.getMessage());
}catch (SQLException e){
out.println(e.getMessage());

}
response.sendRedirect("keeper_list.jsp");
%>
</body>
</html>