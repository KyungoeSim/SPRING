<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 메일 전송 폼 </h1>

<form action="/mail/form" method="POST">
	<p>제목 : <input type="text" name="subject" />
	<p>내용 : <input type="text" name="body" />
	<p>받는이 : <input type="text" name="to" />
	<input type="submit" value="메일 전송" />
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>

</body>
</html>
