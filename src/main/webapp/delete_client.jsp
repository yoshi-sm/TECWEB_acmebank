<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Client</title>
</head>
<body>
	<div align="center">
		<h2>Remove User</h2>
		<br/>
		<form action="deleteServlet" method="POST">
			<label for="id">Id: </label>
			<input id="id" name="id" type="text" placeholder="User's Id">
			<br/>
			<br/>
			<input type="submit" value="Remove" id="btn-Remove" name="remove">
			<input type="submit" value="Return" id="btn-Return" name="return">
		</form>
	</div>
</body>
</html>