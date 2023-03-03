<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car List</title>
</head>
<body>
<%@include file="header.jsp" %>



	<div class="alert alert-dark">
		<div class="container">
			<h1>차량 보기</h1>
		</div>
	</div>


	<div class="container">
		<div class="row" align="center">
		
		<c:forEach items="${carList}" var="car">
			<div class = "col-md-4">
				<h3>${car.cid}</h3>
				<p>${car.cname}
				<p>${car.cprice} 만원
				<p><a href="<c:url value="/car?id=${car.cid}"/>" class="btn btn-Secondary" role="button">상세보기</a>
			</div>

		</c:forEach>
		
		</div>
	</div>


<%@include file="footer.jsp" %>
</body>
</html>