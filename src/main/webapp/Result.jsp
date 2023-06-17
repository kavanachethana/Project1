<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1"></table>
<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Password</th>
<th>Gender</th>
<th>Country</th>
<th>checkbox</th>
</tr>
<c:forEach var="dto" items="${list}">
<tr>
<th>${dto.getId()}</th>
<th>${dto.getName()}</th>
<th>${dto.getEmail()}</th>
<th>${dto.getPassword()}</th>
<th>${dto.getGender()}</th>
<th>${dto.getCountry()}</th>
<th>${dto.getCheckbox()}</th>
</c:forEach>

</body>
</html>