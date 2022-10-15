<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="iso-8859-1"%>
<%@page import="java.io.*,java.util.*,java.sql.*" %>

<%@page import="jakarta.servlet.http.*,jakarta.servlet.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<sql:setDataSource 
		var="snapshot"
		driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://LocalHost:3306/dbstudent?useSSl=false&serverTimezone=UTC"
		user="root"
		password="root"/>
		
		<sql:query dataSource="${snapshot}" var="result">
			select * from student
		</sql:query>
	
	<table border="1" width="100%">
		<tr>
			<th>Emp ID</th>
			<th>Nome</th>
			<th>Sobrenome</th>
			<th>E-mail</th>
		</tr>
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.id}"/></td>
				<td><c:out value="${row.first_Name}"/></td>
				<td><c:out value="${row.last_name}"/></td>
				<td><c:out value="${row.email}"/></td>
			</tr>
		</c:forEach>
	</table>
			
		
</body>
</html>