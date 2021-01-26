<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<title>Account</title>
</head>
<body>
<jsp:include page="_header.jsp"/>
<div class="container" >
	<p><h4>Account information</h4></p>
	<br>
	<p><h4>Name: ${sessionScope.user.name}</h4></p>
	<br>
	<p><h4>Your books:</h4></p>
	<br>
	<ul class="list-group">
		<c:forEach items="${sessionScope.basket.getAll()}" var="item">
			<li class="list-group-item">${item.name}</li>
		</c:forEach>
	</ul>
</div>
</body>
</html>
