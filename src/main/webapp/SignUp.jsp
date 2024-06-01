<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String email = (String)session.getAttribute("email");
		System.out.println(email);
	%>
	<form:form action="regester" modelAttribute="User">
		enter name : <form:input path="name"/> 
		enter email : <form:input value="<%= email %>" path="email"/>
		enter password : <form:input path="password"/>
		enter age : <form:input path="age"/>
		<input type="submit">
</form:form>
</body>
</html>