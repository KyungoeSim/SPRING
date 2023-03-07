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
<%@include file="header.jsp" %>



	<div class="alert alert-dark">
		<div class="container">
			<h1>차량 등록</h1>
		</div>
	</div>


	<form:form modelAttribute="NewCar" 
			   action="./add?${_csrf.parameterName }=${_csrf.token }"
			   class="form-horizontal"
			    method="post"
			   enctype="multipart/form-data">
	<fieldset>
	<legend>${addTitle}</legend>
	자동차 ID : <form:input path="cid" class="form-contorl"/><br>
	자동차 이름 : <form:input path="cname" class="form-contorl"/><br>	
	자동차 가격 : <form:input path="cprice" class="form-contorl"/><br>
	자동차 카테고리 : <form:input path="ccate" class="form-contorl"/><br>
	자동차 소개 : <form:textarea path="cdesc" cols="50" rows="2" class="form-contorl"/><br>
	자동차 사진: <form:input path="carimage" type="file" class="form-contorl"/>
	<input type = "submit" class="btn btn-primary" value="등록"/>
	
	</fieldset>
	</form:form>

<%@include file="footer.jsp" %>
</body>
</html>