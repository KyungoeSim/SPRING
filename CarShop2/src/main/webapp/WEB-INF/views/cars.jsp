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


	<div class="container">
		<div class="row" align="center">
		
		<c:forEach items="${carList}" var="car">
			<div class = "col-md-4">

				<img src="<c:url value="/resources/images/${car.cfilename}"/>" style="width:60%"/>

				<h3>${car.cid}</h3>
				<p>${car.cname}
				<p>${car.cprice} 만원
				<p><a href="<c:url value="cars/car?id=${car.cid}"/>" class="btn btn-primary" role="button">상세보기 &raquo;</a></p>
			</div>

		</c:forEach>
		
		</div>
	</div>



</body>
</html>