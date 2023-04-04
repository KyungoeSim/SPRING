<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
ftestCancelled.jsp
취소
<br>
	<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}"/>

<a href="<c:url value="/cars" />">제품 목록</a>
</body>
</html>