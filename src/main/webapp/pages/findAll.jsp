<%--<%@ page import="java.util.List" %>--%>
<%--<%@ page import="by.tms.model.User" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<title>All users</title>
</head>
<body>

<jsp:include page="_header.jsp"/>
<div class="container">
	<br>
	<p><h4>All users:</h4></p>
	<br>
	<ul class="list-group">
		<c:forEach items="${requestScope.users}" var="user">
			<li class="list-group-item">${user.name}</li>
		</c:forEach>

	</ul>
</div>
</body>
</html>
