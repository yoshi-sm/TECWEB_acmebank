<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>
</head>
<body>
	<div align="center">
		<c:if test="${user != null}">
			<p align="center">Seja bem vindo, Sr. <strong>${user}</strong><br/><br/>
			 O que deseja fazer?</p>
		</c:if>
	</div>
	<br/><br/>
	<br/><br/>
	<div align="center">
		<form action="userServlet" method="POST">
			<input type="submit" value="Register Client" id="btn-Register" name="register">
			
			
			<input type="submit" value="Delete Client" id="btn-Delete" name="delete">
			<input type="submit" value="ShowAll" id="btn-ShowAll" name="showAll">
			<input type="submit" value="Return" id="btn-Return" name="return">
		</form>
	</div>
</body>
</html>