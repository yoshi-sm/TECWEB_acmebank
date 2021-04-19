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
		<h2>Client List</h2>
        <table border="1" cellpadding="5">
            
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
            </tr>
            <c:forEach var="user" items="${clientList}">
                <tr>
                    <td><c:out value="${user.id}" /></td>
                    <td><c:out value="${user.name}" /></td>
                    <td><c:out value="${user.email}" /></td>
                    <td><c:out value="${user.phone}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
	<div align="center">
		<form action="listServlet" method="POST">
			<input type="submit" value="Return" id="btn-Return" name="return">
		</form>
	</div>
	
</body>
</html>