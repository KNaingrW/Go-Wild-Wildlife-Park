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
<title>Update Keeper</title>
</head>
<body>
	<%

String kId = request.getParameter("Keeper_ID");
String kn = request.getParameter("K_name");
String dob = request.getParameter("Date_of_birth");
String kr = request.getParameter("K_rank");

out.println (kId);
out.println (kn);
out.println (dob);
out.println (kr);

Keeper2 dao = new Keeper2();
Keeper k = new Keeper (Integer.parseInt(kId), kn, dob, kr );

int rowsAffected;
try {
rowsAffected = dao.update(k);
out.println("No of rows affected - " + rowsAffected);
}catch (ClassNotFoundException ex){
out.println( ex.getMessage());
}catch (SQLException e){
out.println(e.getMessage());
}



%>
</body>
</html>