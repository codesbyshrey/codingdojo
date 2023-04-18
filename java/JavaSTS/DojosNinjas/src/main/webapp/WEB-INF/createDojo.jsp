<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- FOR BOOTSTRAP CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title> NEW DOJO </title>
</head>
<body>
	<div class="container">
		<h1>New Dojo</h1>
		<form:form action="/dojos/new" method="post" modelAttribute="dojo" class="form col-12">
			<div class="form-group mb-3">
				<form:label path="name" class="form-label">Dojo Name: </form:label>
				<form:input path="name" type="text" class="form-control"/>
			</div>
			<input type="submit" value="Create" class="btn btn-primary"/>
		</form:form>
	</div>
</body>
</html>