<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자동차 수정</title>
</head>
<body>

	
	<form:form modelAttribute="updateCar" 
			   action="./update?${_csrf.parameterName}=${_csrf.token}"
	           class="form-horizontal"
	           method = "post"
	           enctype="multipart/form-data">
	<fieldset>
	<form:input path="cid" type="hidden" class="form-control" value="${car.cid}"/>
	<p><b>자동차 ID : ${car.cid}</b><br>
	자동차 이름 : <form:input path="cname" class="form-control" value="${car.cname}"/>
	자동차 가격 : <form:input path="cprice" class="form-control" value="${car.cprice}"/>
	자동차 카테고리 : <form:input path="ccate" class="form-control" value="${car.ccate}"/>
	자동차 소개 : <textarea name="cdesc" cols="50" rows="2" class="form-control">${car.cdesc}</textarea>	
	자동차 사진 : <form:input path="carimage" type="file" class="form-control"/>
	<input type="submit" class="btn btn-primary" value="수정"/>
	
	
	</fieldset>
	</form:form>



</body>
</html>