<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Derin's Playground</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		
		<!-- Reference Bootstrap files -->
		<link rel="stylesheet"
			 href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
		
		<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
	<body>
		<h2>Derin Playground</h2>
		<hr>
		
		<p>Welcome to Derin's Playground for APPs</p>
		
		<hr>
		
		<p>
			User: <security:authentication property="principal.username"/>
			<br><br>
			Role(s): <security:authentication property="principal.authorities"/>
		</p>
		
		<security:authorize access="hasRole('MANAGER')">
		<!-- Shows content if user has MANAGER role -->
		<hr>
		<p>
			<a href="${ pageContext.request.contextPath }/leaders">Leadership Meeting</a> Only for Managers
		</p>
		</security:authorize>
		
		<security:authorize access="hasRole('ADMIN')">
		<!-- Shows content if user has ADMIN role -->
		<hr>
		<p>
			<a href="${ pageContext.request.contextPath }/systems">IT Meeting</a> Only for Administrators
		</p>
		</security:authorize>
		
		<hr>
		
		<form:form 	action="${ pageContext.request.contextPath }/logout" 
					method="POST">
					
			<div style="margin-top: 10px" class="form-group">						
				<div class="col-sm-6 controls">
					<button type="submit" class="btn btn-danger">Logout</button>
				</div>
			</div>
		</form:form>
		
	</body>
</html>