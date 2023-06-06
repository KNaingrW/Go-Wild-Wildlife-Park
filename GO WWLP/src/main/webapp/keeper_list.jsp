<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.csm.gwwp2.Keeper2"%>
<%@ page import="com.csm.gwwp1.Keeper"%>
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
				
	Keeper2 dMgr = new Keeper2();
	ArrayList<Keeper> keepers = dMgr.fetchAll();


%>
	<table border="1">
		<tr>
			<th>Keeper Id</th>
			<th>Keeper Name</th>
			<th>Keeper DOB</th>
			<th>Keeper Rank</th>
		</tr>
		<%
      for(Keeper keeper : keepers){
     	 
     	 //out.println (keepers.getKeeperId()+"\t" + keepers.getKeeperName()+ "\t" + keepers.getDateofBirth()+ keepers .getKeeperRank());
     	 
      
      %>
		<tr>
			<td><%=keeper.getKeeperId()%></td>
			<td><%=keeper.getKeeperName()%></td>
			<td><%=keeper.getDateofBirth()%></td>
			<td><%=keeper.getKeeperRank()%></td>
			<td><a href="keeper_edit.jsp?id=<%=keeper.getKeeperId()%>">Edit
					Keeper</a></td>
			<td><a href="keeper_delete.jsp?id=<%=keeper.getKeeperId()%>">Delete
					Keeper</a></td>

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