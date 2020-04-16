<%@ page import="java.sql.*" %>
<%! int n=0,res=0,ca=0,wa=0;%>
<html>
<head>
<title>Examination</title>
<style>
	h1{font-size:50px;background:blue;background:linear-gradient(to right,lightblue 0%,blue 100%);color:yellow;}
	#d{width:600px;border:4px solid blue;height:350px;position:absolute;top:200px;left:400px;text-align:center;height:400px;}
	td,th{font-size:20px;}
	#d3{position:absolute;top:200px;left:1100px;border:2px solid red;width:200px;height:200px;}
	.b{background:blue;width:100px;border-radius:5px;height:30px;color:white;}
</style>
</head>
<body>
<br>
	<h1 align="center">Online Examination System</h1>
	<form action="test.jsp" name="form1">
	<%
		if(request.getParameter("st")!=null && request.getParameter("st").equals("1"))
			res+=2;
		n++;
		if(n==4)
			response.sendRedirect("finish.jsp");
	   System.out.println(n);
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
			Statement statement=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			ResultSet rs=statement.executeQuery("select * from ques");
			rs.absolute(n);
		
	%>
	<div id="d">
		<table cellspacing="50">
			<tr>
				<th colspan="2"><%= rs.getString(2) %></th>
				</tr>
				<tr>
				<td><input type="radio" name="r" id="r1" value="<%= rs.getString(3) %>" onclick="check()"><%= rs.getString(3) %> </td>
				<td><input type="radio" name="r" id="r2" value="<%= rs.getString(4) %>" onclick="check()"><%= rs.getString(4) %> </td></tr>
				<tr><td><input type="radio" name="r" id="r3" value="<%= rs.getString(5) %>" onclick="check()"><%= rs.getString(5) %> </td>
				<td><input type="radio" name="r" id="r4" value="<%= rs.getString(6) %>" onclick="check()"><%= rs.getString(6) %> </td>
				<td><input type="hidden" id="a" value="<%= rs.getString(7) %>" > </td>
				</tr>
				
		</table>
		<input type="hidden" name="ures">
		<input type="hidden" name="st" value="0">
		<input type="button" value="Next" onclick="shownext()" class="b">
		
	
	</form>
	<%
		con.close();
	}
	catch(Exception e)
	{
		out.println(e);
	}
	%>
	<script>
		function check()
		{
			var ans;
			if(document.getElementById('r1').checked)
				{
					ans=document.getElementById('r1').value;
				}
			if(document.getElementById('r2').checked)
			{
				ans=document.getElementById('r2').value;
			}
			if(document.getElementById('r3').checked)
			{
				ans=document.getElementById('r3').value;
			}
			if(document.getElementById('r4').checked)
			{
				ans=document.getElementById('r4').value;
			}
			document.form1.ures.value=ans;
		}
		function shownext()
		{
			if(document.form1.ures.value.match(document.getElementById("a").value))
				document.form1.st.value=1;
			form1.submit();
		}
	</script>
	</div>
	<div id="d3">
		<table>
			<tr><th><label>Total Question:</th><th></label></th></tr>
			<tr><th><label>Result:</th><th><%=res%></label></th></tr>
			<tr><th><label>Correct Ans:</th><th><%=ca%></label></th></tr>
			<tr><th><label>Wrong Ans:</th><th><%=wa%></label></th></tr>
			
		</table>
	</div>
</body>
</html>