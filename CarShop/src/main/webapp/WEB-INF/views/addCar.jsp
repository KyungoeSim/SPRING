<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자동차 등록</title>
</head>
<body>
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
		crossorigin="anonymous">

	<nav class="navbar navbar-expand navbar-dark bg-dark"
		aria-label="Second navbar example">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">CarShop</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarsExample02"
				aria-controls="navbarsExample02" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarsExample02">
				<ul class="navbar-nav me-auto">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/">홈</a></li>
					<li class="nav-item"><a class="nav-link" href="/cars">차량보기</a></li>
					<li class="nav-item"><a class="nav-link" href="/cars">차량등록</a></li>
					<li class="nav-item"><a class="nav-link" href="/boards">게시판</a>
					</li>
				</ul>
				<form role="search">
					<input class="form-control" type="search" placeholder="Search"
						aria-label="Search">
				</form>
			</div>
		</div>
	</nav>



	<div class="alert alert-dark">
		<div class="container">
			<h1>차량 등록</h1>
		</div>
	</div>


	<form:form modelAttribute="NewCar" class="form-horizontal">
	<fieldset>
	<legend>${addTitle }</legend>
	자동차 ID : <form:input path="cid" class="form-contorl"/><br>
	자동차 이름 : <form:input path="cname" class="form-contorl"/><br>	
	자동차 가격 : <form:input path="cprice" class="form-contorl"/><br>
	자동차 카테고리 : <form:input path="ccate" class="form-contorl"/><br>
	자동차 소개 : <form:textarea path="cdesc" cols="50" rows="2" class="form-contorl"/>
	
	<input type = "submit" class="btn btn-primary" value="등록"/>
	
	</fieldset>
	</form:form>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>
</body>
</html>