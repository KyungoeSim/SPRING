<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>ftest3</h1>

<div>
	<form:form>
		<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}"/>
	
	<input type="submit" value="이동" name="_eventId_ftestCancelled" />
	<button name="_eventId_cancel">취소</button>
	</form:form>
</div>

</body>
</html>