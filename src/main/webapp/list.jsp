<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Client List</title>
</head>
<body>
	<div align="center">
		<c:if test="${clientList != null}">
			<c:forEach items="${clientList}" var="client">
          
		        <p>Nome: <strong>${client.name}</strong>  </p>
				<p>E-mail: <strong>${client.email}</strong>  </p>
				<p>Phone: <strong>${client.phone}</strong>  </p>
				<br/><br/>
		        
    			
			</c:forEach>
		</c:if>
	</div>
	
	<div align="center">
		<form action="listServlet" method="POST">
			<input type="submit" value="Return" id="btn-Return" name="return">
		</form>
	</div>
	
</body>
</html>