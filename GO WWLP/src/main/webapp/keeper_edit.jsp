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
<title>Edit Keeper</title>
<style>
body {
	text-align: center;
	color: #7300e6;
	font-famiy: system-ui;
}
</style>
</head>
<body>

	<h3 style="text-align: center">Edit form for keeper</h3>
	<form method="POST" action="Keeper_update.jsp">
		<%
String sId = request.getParameter("id");
		if(sId == null){
			out.println("Keeper ID is not found");
		}else{
			int id = Integer.parseInt(sId);
			Keeper2 dao = new Keeper2();
			try{
				Keeper k = dao.getById(id);
				out.print(k);
%>
		<input type="hidden" name="Keeper_ID" value="<%=k.getKeeperId()%>" />
		<br>
		<br> <label for="K_name">Keeper Name</label><br> <input
			type="text" name="K_name" id="K_name" value="<%=k.getKeeperName()%>"
			required /> <br>
		<br> <label for="Date_of_birth">Date of Birth</label><br> <input
			type="date" name="Date_of_birth" id="Date_of_birth"
			value="<%=k.getDateofBirth()%>" /><br>
		<br> <label for="K_rank">Rank</label><br> <input type="text"
			name="K_rank" id="K_rank" value="<%=k.getKeeperRank()%>" /> <br>
		<br> <input type="submit" value="Update" />
		<%
}catch (ClassNotFoundException ex){
out.println( ex.getMessage());
}catch (SQLException e){
out.println(e.getMessage());
}
}
%>
	</form>


</body>
</html>