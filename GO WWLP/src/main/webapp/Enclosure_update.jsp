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
<title>Enclosure Update</title>
</head>
<body>

	<%

String eId = request.getParameter("Enclosure_ID");
String lo = request.getParameter("Location");
String et = request.getParameter("E_type");


out.println (eId);
out.println (lo);
out.println (et);

Enclosure2 dao = new Enclosure2();
Enclosure e = new Enclosure (Integer.parseInt(eId), lo, et );

int rowsAffected;
try {
rowsAffected = dao.update(e);
out.println("No of rows affected - " + rowsAffected);
}catch (ClassNotFoundException ex){
out.println( ex.getMessage());
}catch (SQLException k){
out.println(k.getMessage());
	}



%>

</body>
</html>