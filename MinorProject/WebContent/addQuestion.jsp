<html>
	<head>
		<style>
			h1{background:blue;font-size:40px;text-align:center;color:yellow;height:70px;}
			textarea{border:2px solid blue;width:300px;}
			input{border:2px solid blue;height:30px;}
			.b{width:100px;background:lightblue;}
			#d{border:5px solid green;width:400px;padding:20px;position:absolute;left:450px;}
			h2{color:red;}
		</style>
	</head>
	<body>
		<h1>Online Examination System</h1><hr><br>
		<h2>Add Question</h2>
		<div id="d">
			<form action="addAction.jsp" method="post">
				<h3>Write Question</h3>
				<textarea rows=5 cols=70 name="ta"></textarea><br><br>
				<table>
				<tr><th>Option 1</th><th><input type="text" name="opt1"/></th></tr>
				<tr><th>Option 2</th><th><input type="text" name="opt2"/></th></tr>
				<tr><th>Option 3</th><th><input type="text" name="opt3"/></th></tr>
				<tr><th>Option 4</th><th><input type="text" name="opt4"/></th></tr>
				<tr><th>Answer</th><th><input type="text" name="ans"/></th></tr>
				<tr><th colspan="2" align="right"><input type="submit" value="Add" class="b"><input type="button" class="b" value="Back"/></th></tr>
				</table>
			</form>
		</div>
	</body>
</html>