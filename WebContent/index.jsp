<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		url="jdbc:mysql://Localhost:3306/contato?useSSl=false&serverTimezone=UTC"
		user="root"
		password="root"/>
		
	<sql:query dataSource="${snapshot}" var="result">
		select id,  nome, email from agenda
	</sql:query>
	
	<table border="1" width="100%">
		<tr>
			<th>Id Empregado</th>
			<th>Funcionário</th>
			<th>E-mail</th>
		</tr>
	</table>
			
		
</body>
</html>