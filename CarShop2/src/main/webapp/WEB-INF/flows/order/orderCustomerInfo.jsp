<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
		crossorigin="anonymous">

	<nav class="navbar navbar-expand navbar-dark bg-dark fixed-top"
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
					<li class="nav-item"><a class="nav-link" href="/cars">차량
							보기</a></li>
					<li class="nav-item"><a class="nav-link" href="/boards">게시판</a>
					</li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> 회원관리 </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="/login">로그인</a></li>
							<li><a class="dropdown-item" href="/logout">로그아웃</a></li>
						</ul></li>
				</ul>
				<c:choose>
					<c:when test="${isLogOn == true}">
						<form method="post" action="/logout">
							<input type="submit" class="btn btn-success" value="Logout" /> <input
								type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form>
					</c:when>
					<c:otherwise>
						<form method="post" action="/login">
							<input type="submit" class="btn btn-primary" value="Login" /> <input
								type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</nav>
	<div class="my-5">
		<div class="alert alert-dark">
			<div class="container">
				<h1>고객 정보</h1>
			</div>
		</div>
	</div>






	<div class="container">
		<form:form modelAttribute="order.customer" class="form-holizontal">
			<fieldset>
				<legend>고객 세부 사항</legend>
				<div class="form-group row">
					<label class="col-sm-2 control-label">고객 ID</label>
					<div class="col-sm-3">
						<form:input path="customerId" class="form-control" />
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 control-label">성명</label>
					<div class="col-sm-3">
						<form:input path="name" class="form-control" />
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 control-label">전화번호</label>
					<div class="col-sm-3">
						<form:input path="phone" class="form-control" />
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 control-label">국가명</label>
					<div class="col-sm-3">
						<form:input path="address.country" class="form-control" />
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 control-label">우편번호</label>
					<div class="col-sm-3">
						<form:input path="address.zipCode" class="form-control" />
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 control-label">주소</label>
					<div class="col-sm-5">
						<form:input path="address.addressName" class="form-control" />
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 control-label">세부주소</label>
					<div class="col-sm-3">
						<form:input path="address.detailName" class="form-control" />
					</div>
				</div>
				<input type="hidden" name="_flowExecutionKey"
					value="${flowExecutionKey }" />

				<div class="form-group row">
					<div class="col-sm-offset-2 col-sm-10 ">
						<input type="submit" class="btn btn-primary" value="등록"
							name="_eventId_customerInfo" />
						<button class="btn btn-default" name="_eventId_cancel">취소</button>
					</div>
				</div>

			</fieldset>

		</form:form>
	</div>












	<nav class="navbar fixed-bottom navbar-expand-sm navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Car Shop</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
				aria-controls="navbarCollapse" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/cars">자동차 보기</a></li>
				</ul>
			</div>
		</div>
	</nav>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>
</body>
</html>