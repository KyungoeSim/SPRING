<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Detail</title>
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>

<script>
function addcartFunction() {
	$.ajax({
		type:"POST",
		url:"/cart/ajaxadd",
		data:{cid:"${car.cid}"},
		beforeSend : function(xhr)
	          {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
	              xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
	          },
		success:function(result) {
			alert("제품이 장바구니에 추가되었습니다.");
		},
		error:function(request, status, error) {
			alert(request.status + " " +request.responseText);
		}
	})
}
</script> 

</head>
<body>



    <div class="container">
        <div class="row">
            <div class="col-md-4">


				<img class="img-responsive center-block" src="<c:url value="/resources/images/${car.cfilename}"/>" style="width:100%"/>

             </div>
              <div class="col-md-8">

                <br>
                <p><b>제품코드 : </b>${car.cid}
				<p>${car.cname}
				<p>${car.cprice} 만원
				<p>${car.ccate}
				<p>${car.cdesc}
                <br>
				<form:form name="addForm" method="put">
				 		<a href="javascript:addcartFunction()" class="btn btn-primary">제품주문 &raquo;</a>
				        <%--기존 방식을 ajax 적용--%>	
						<a href="<c:url value="/cart"/>" class = "btn btn-warning">장바구니 &raquo;</a>
						<a href="<c:url value="/cars"/>" class = "btn btn-secondary">제품목록 &raquo;</a>
						</form:form>
            </div>

				<h3></h3>


		<p>
		
		</div>
	</div>


<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
