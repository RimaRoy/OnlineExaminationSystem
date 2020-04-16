<!DOCTYPE html>
<html>
<head>
	<style>
		.h{background:blue;color:white;font-size:50px;position:absolute;left:360px;border:5px solid gray;padding:20px;}
		h2{left:550px;position:absolute;top:150px;color:green;}
		th{width:150px;height:50px;border:2px solid gray;background:blue}
            table{position:absolute;top:200px;}
            th:hover{background:gray;border:2px solid blue;color:white;}
		</style>
		<script>
                function go(page)
                {
                	document.getElementById("f").action=page;
                	document.getElementById("f").submit();
                }
        </script>
</head>
<body>
	<br><br>
           <label class="h">Online Examination System</label>
           <h2>Welcome Admin</h2>
           <form id="f">
            <table>
                <tr><th>Profile</th></tr>
                <tr><th>Logout</th></tr>
            </table>
        </form>
           </body>
</html>