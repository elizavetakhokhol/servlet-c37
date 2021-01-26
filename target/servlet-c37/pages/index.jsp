<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<title>Index</title>
</head>
<body>
<jsp:include page="_header.jsp"/>
<div class="container">
	<ul class="list-group">
<c:forEach items="${requestScope.items}" var="item">
		<li class="list-group-item" ><a href="/item/view?id=${item.id}">${item.name}</a></li>
</c:forEach>
	</ul>
</div>
</body>
</html>
