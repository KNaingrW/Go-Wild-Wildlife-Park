<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.csm.gwwp2.Keeper2"%>
<%@ page import="com.csm.gwwp1.Keeper"%>
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
	String kn = request.getParameter("K_name");
	String kd = request.getParameter("Date_of_birth");
	String kr = request.getParameter("K_rank");
	
	DBManager dbMgr=new DBManager();
	dbMgr.getConnection();
	Keeper k= new Keeper(kn,kd, kr);
	
	Keeper2 dMgr= new Keeper2();
	int rowAffected=-1;
			
	rowAffected = dMgr.insert(k);
	
	
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