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
		<c:if test="${message != null}">
			<p align="center"><strong>${message}</strong><br/><br/></p>
		</c:if>
		<c:if test="${message2 != null}">
          
		        <p>Nome: <strong>${message2.name}</strong>  </p>
				<p>E-mail: <strong>${message2.email}</strong>  </p>
				<p>Phone: <strong>${message2.phone}</strong>  </p>
				<p>Id: <strong>${message2.id}</strong>  </p>
				<br/><br/>
		        
    			
		</c:if>
	</div>
	<div align="center">
		<c:if test="${user != null}">
			<p align="center">Olá, Sr. <strong>${user}</strong><br/><br/>
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