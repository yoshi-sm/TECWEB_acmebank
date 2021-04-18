<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error</title>
</head>
<body>
	<div align="center">
		<c:if test="${error != null}">
			<p align="center"><strong>${error}</strong></p>
		</c:if>
	</div>
	<div align="center">
		<br/><br/>
		<form action="userServlet" method="POST">
	
			<input type="submit" value="Return" id="btn-Return" name="return">
		</form>
	
	</div>
</body>
</html>