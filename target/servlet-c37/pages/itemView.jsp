<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<title>Title</title>
</head>
<body>
<jsp:include page="_header.jsp"/>
<div class="container">

		<table border="3" width="100%" height="500">
			<tr>
				<td style="background-image: url(https://avatanplus.com/files/resources/original/57e43cd4b1fdf157538d9ef9.jpg);" width="100%" height="100%">
				<p><h4>Name:</h4> ${requestScope.item.name}</p>
					<p><h4>Description:</h4> ${requestScope.item.description}
					<p><h4>Price:</h4> ${requestScope.item.price} BYN</p>
					<p><h4>Author:</h4> ${requestScope.item.author}</p>
				</td>

				<td class="img">

						<c:if test="${requestScope.item.id == 1}" var="id">
							<img src="https://cdn1.ozone.ru/multimedia/books_covers/1005679879.jpg" height="400" width="400">
						</c:if>
						<c:if test="${requestScope.item.id == 2}" var="id">
							<img src="https://s1-goods.ozstatic.by/2000/561/406/10/10406561_0.jpg" height="400" width="400">
						</c:if>
						<c:if test="${requestScope.item.id == 3}" var="id">
							<img src="https://static.my-shop.ru/product/3/402/4016014.jpg"height="400" width="400" >
						</c:if>
						<c:if test="${requestScope.item.id == 4}" var="id">
							<img src="https://biblio.by/media/catalog/product/cache/1/image/1200x1200/85e4522595efc69f496374d01ef2bf13/2/3/2383995_detail.jpg"
								 height="400" width="300">
						</c:if>
					<c:if test="${requestScope.item.id == 5}" var="id">
						<img src="https://bookhole.by/wp-content/uploads/2019/07/cover1__w600-17.jpg"height="400" width="400">
					</c:if>
						<c:if test="${sessionScope.user != null}">
							<form action="/basket" method="post">
								<input type="hidden" name="id" value="${requestScope.item.id}">
								<button>Add to basket</button>
							</form>
						</c:if>

				</td>
			</tr>
		</table>


</div>
</body>
</html>
