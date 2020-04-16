<html>
<head>
<body>
<%@ page import="java.sql.*" %>
<%
	String regno=request.getParameter("id");
	String name=request.getParameter("nm");
	String role=request.getParameter("r");
	String email=request.getParameter("em");
	String branch=request.getParameter("b");
	String pass=request.getParameter("ps");
	
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
		PreparedStatement ps=con.prepareStatement("insert into register values(?,?,?,?,?,?)");
		
		ps.setString(1,regno);
		ps.setString(2,name);
		ps.setString(3,role);
		ps.setString(4,email);
		ps.setString(5,branch);
		ps.setString(6,pass);
		
		ps.executeUpdate();
		con.close();
	}
	catch(Exception e)
	{
		out.println(e);
	}
		
		
	
%>
</head>
</html>
