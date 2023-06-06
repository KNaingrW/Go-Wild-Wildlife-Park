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
</head>
<body>
	<%
try
{
	String dt = request.getParameter("D_type");
	String nof = request.getParameter("num_of_feed");
	DBManager dbMgr=new DBManager();
	dbMgr.getConnection();
	Diet d = new Diet(dt, nof);
	Diet2 dMgr= new Diet2();
	int rowAffected=-1;
	rowAffected = dMgr.insert(d);
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