<html>
<head>
</head>
<body>
<%@ page import="java.sql.* " %>
<%
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	PreparedStatement ps1=con.prepareStatement("select * from ques");
	ResultSet rs=ps1.executeQuery();
	while(rs.next())
	{
		%>
		<table>
		<tr>
		<th><textarea rows="3" cols="150"><%out.print(rs.getString(2)); %></textarea></th>
		</tr>
		<tr>
		<th><%out.print(rs.getString(3)); %></th>
		</tr>
		<tr>
		<th><%out.print(rs.getString(4)); %></th>
		</tr>
		<tr>
		<th><%out.print(rs.getString(5)); %></th>
		</tr>
		<tr>
		<th><%out.print(rs.getString(6)); %></th>
		</tr>
		<tr>
		<th><%out.print(rs.getString(7)); %></th>
		</tr>
		</table>
		<%
	}
	con.close();
}
catch(Exception e)
{
	out.print(e);
}
%>
</body>
</html>