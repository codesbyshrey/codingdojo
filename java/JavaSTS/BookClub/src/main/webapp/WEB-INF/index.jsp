<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--  NEEDS ERROR PAGE AND JPA TAG LIBRARY -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- FOR BOOTSTRAP CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title> INDEX.JSP (read share) </title>
</head>
<body>
	<div class="container">
		<div class="row">
			<h1>Book Club</h1>
			<p>A place for friends to share thoughts on books.</p>
		</div>
		<div class="row">
			<div class="col-6">
				<h2>REGISTER</h2>
				<form:form class="form" action="/register" method="POST" modelAttribute="newUser">
					<div class="form-group mb-3">
						<form:label class="form-label" path="name">Name: </form:label>
						<form:errors class="text-danger" path="name"/>
						<form:input type="text" class="form-control" path="name"/>
					</div>
					<div class="form-group mb-3">
						<form:label class="form-label" path="email">Email: </form:label>
						<form:errors class="text-danger" path="email"/>
						<form:input type="text" class="form-control" path="email"/>
					</div>
					<div class="form-group mb-3">
						<form:label class="form-label" path="password">Password: </form:label>
						<form:errors class="text-danger" path="password"/>
						<form:input type="password" class="form-control" path="password"/>
					</div>
					<div class="form-group mb-3">
						<form:label class="form-label" path="confirm">Confirm PW: </form:label>
						<form:errors class="text-danger" path="confirm"/>
						<form:input type="password" class="form-control" path="confirm"/>
					</div>
					<input class="btn btn-primary" type="submit" value="Submit"/>
				</form:form>
			</div>
			<div class="col-6">
				<h2>LOGIN</h2>
				<form:form class="form" action="/login" method="POST" modelAttribute="loginUser">
					<div class="form-group mb-3">
						<form:label class="form-label" path="email">Email: </form:label>
						<form:errors class="text-danger" path="email"/>
						<form:input type="text" class="form-control" path="email"/>
					</div>
					<div class="form-group mb-3">
						<form:label class="form-label" path="password">Password: </form:label>
						<form:errors class="text-danger" path="password"/>
						<form:input type="password" class="form-control" path="password"/>
					</div>
					<input class="btn btn-primary" type="submit" value="Submit"/>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>