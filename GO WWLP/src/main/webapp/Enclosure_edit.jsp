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
<title>Edit Enclosure</title>

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
	<form method="POST" action="Enclosure_update.jsp">
		<%
String sId = request.getParameter("id");
		if(sId == null){
			out.println("Keeper ID is not found");
		}else{
			int id = Integer.parseInt(sId);
			Enclosure2 dao = new Enclosure2();
			try{
				Enclosure e = dao.getById(id);
				out.print(e);
%>
		<input type="hidden" name="Enclosure_ID"
			value="<%=e.getEnclosureId()%>" /> <br>
		<br> <label for="Location">Enclosure Location</label><br> <input
			type="text" name="Location" id="Location"
			value="<%=e.getEnclosureLocation()%>" required /> <br>
		<br> <label for="E_type">Enclosure Type</label><br> <input
			type="text" name="E_type" id="E_type"
			value="<%=e.getEnclosureType()%>" /><br>
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