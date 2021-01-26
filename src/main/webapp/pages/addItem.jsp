<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="_header.jsp"/>
<div class="container">
    <p>Name ${requestScope.item.name}</p>
    <p>Description ${requestScope.item.description}</p>
    <p>Price ${requestScope.item.price}</p>${requestScope.message1}
    <form action="/basket" method="post">
        <input type="hidden" name="id" value="${requestScope.item.id}">
        <button>Add</button>
    </form>

</div>
</body>
</html>
