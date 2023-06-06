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
</head>
<body>
	<%
try
{
	String st = request.getParameter("S_type");
	String sg = request.getParameter("S_group");
	String ls = request.getParameter("Lifestyle");
	String cs = request.getParameter("Conservation_status");
	
	DBManager dbMgr=new DBManager();
	dbMgr.getConnection();
	Species s= new Species(st, sg, ls, cs);
	
	Species2 dMgr= new Species2();
	int rowAffected=-1;
			
	rowAffected = dMgr.insert(s);
	
	
	if(rowAffected==1)
	out.println("Thank you for your record. Your record inserted successfully");
	
	
	
	
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}




%>
	<%

%>
</body>
</html>