<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board List</title>
</head>
<body>
<%@include file="header.jsp" %>



	<div class="alert alert-dark">
		<div class="container">
			<h1>게시판</h1>
		</div>
	</div>


	<div class="container">
		<div class="row" align="center">
		
		<c:forEach items="${boardList}" var="board">
			<div class = "col-md-4">
				<h3>${board.btitle}</h3>
				<p>${board.bcontent}
				<p>${board.bautor}
				<p>${board.bdate}
			</div>

		</c:forEach>
		
		</div>
	</div>


<%@include file="footer.jsp" %>
</body>
</html>