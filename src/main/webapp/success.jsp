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
        <div align="center">
        <table border="1" cellpadding="5">
            
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
            </tr>
                <tr>
                    <td><c:out value="${message2.id}" /></td>
                    <td><c:out value="${message2.name}" /></td>
                    <td><c:out value="${message2.email}" /></td>
                    <td><c:out value="${message2.phone}" /></td>
                </tr>
        </table>
    	</div> 
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