<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.csm.gwwp2.Animal2"%>
<%@ page import="com.csm.gwwp1.Animal"%>
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
	String an = request.getParameter("A_Name");
	String sg = request.getParameter("Gender");
	String ya = request.getParameter("Year_Arrived");
	int ed = Integer.parseInt(request.getParameter("E_ID"));
	int kd = Integer.parseInt(request.getParameter("K_ID"));
	int sd = Integer.parseInt(request.getParameter("S_ID"));
	int dd = Integer.parseInt(request.getParameter("D_ID"));
	
	DBManager dbMgr=new DBManager();
	dbMgr.getConnection();
	Animal a= new Animal(an, sg, ya, ed, kd, sd, dd);
	
	Animal2 dMgr= new Animal2();
	int rowAffected=-1;
			
	rowAffected = dMgr.insert(a);
	
	
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