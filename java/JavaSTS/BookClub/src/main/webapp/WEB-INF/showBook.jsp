<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- only needs c tag library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- FOR BOOTSTRAP CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title> SHOWBOOK.JSP (book share)</title>
</head>
<body>
		<div class="container">
		<div  class="navbar d-flex justify-content between">
			<h1><c:out value="${book.title}"/></h1>
			<a href="/books">Back to the Shelf!</a>
		</div>
		<div>
			<h5><c:out value="${book.user.name}"/> read <c:out value="${book.title}"/> by <c:out value="${book.author}"/>.</h5>
			<h5>Here are <c:out value="${book.user.name}"/>'s thoughts: </h5>
			<div class="d-flex justify-content-center">
				<p class="border border-2 border-dark border-start-0 border-end-0 col-10"><c:out value="${book.thoughts}"/></p>
			</div>
		</div>
	</div>
</body>
</html>