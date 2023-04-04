<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>404 Error Page</title>
</head>
<body>
<%@ include file="header.jsp" %>

 
 
 
<div class="my-5">
	<div class="alert alert-dark">
		<div class="container">
        <h1 class="display-3">500 Error </h1>  
        <p>페이지를 찾을 수 없습니다.(일부 메뉴는 로그인한 사용자만 이용할 수 있습니다.)</p>  
		</div>
	</div>
</div>

<div class="cointainer m-5 d-flex justify-content-center">
<img src="/resources/images/500error.jpg" width="800" height="500" alt="404" />
</div>
<%@ include file="footer.jsp" %>

</body>
</html>