<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Derin's Playground</title>
	</head>
	<body>
		<h2>Derin Playground</h2>
		<hr>
		
		<p>Welcome to Derin's Playground for APPs</p>
		
		<form:form 	action="${ pageContext.request.contextPath }/logout" 
					method="POST">
			<input type="submit" value="Logout"/>
		</form:form>
		
	</body>
</html>