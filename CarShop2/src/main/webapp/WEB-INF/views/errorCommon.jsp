<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Page</title>
</head>
<body>
<%@ include file="header.jsp" %>
<div class="my-5">
	<div class="alert alert-dark">
		<div class="container">
        <h1 class="display-3"> Error </h1>  
        <p>알 수 없는 에러가 발생했습니다.</p>  
		</div>
	</div>
</div>
<div class="cointainer m-5">
<img src="/resources/images/500.jpg" alt="500" />
</div>
${exception}
<%@ include file="footer.jsp" %>

</body>
</html>