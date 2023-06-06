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
</head>
<body>
	<%
try
{
	String lo = request.getParameter("Location");
	String et = request.getParameter("E_type");
	DBManager dbMgr=new DBManager();
	dbMgr.getConnection();
	Enclosure e= new Enclosure(lo, et);
	Enclosure2 dMgr= new Enclosure2();
	int rowAffected=-1;	
	rowAffected = dMgr.insert(e);
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