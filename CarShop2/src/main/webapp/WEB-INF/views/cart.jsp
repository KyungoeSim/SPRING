<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Detail</title>
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>

<script>
	function removeFromCart(action) {
	    document.removeForm.action = action;
	    document.removeForm.submit();
	    window.location.reload();
	}

	function clearCart() {
	    document.clearForm.submit();
	    window.location.reload();
	}
	
			
	function ajaxremoveFromCart(item) {
		$.ajax({
			type:"POST",
			url:"/cart/ajaxremove",
 			data:{cid:item},
			beforeSend : function(xhr)
		          {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
		              xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
		          },
			success:function(result) {
				alert("제품이 삭제되었습니다.");
			},
			error:function(request, status, error) {
				alert(request.status + " " +request.responseText);
			}
		})

	    window.location.reload();
	}
	</script>

</head>
<body>

	<div class="container">
		<div class="d-grid gap-2 d-md-flex justify-content-md-end">
			<form:form name="clearForm" method="delete">
				<a href="javascript:clearCart()" class="btn btn-danger pull-left">삭제하기</a>
			
 				<a href="<c:url value="/order?cartId=${cartId}" />" class="btn btn-success float-right"> 주문하기 &raquo;</a>
 
 </form:form>
		</div>
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>제품</th>
					<th>가격</th>
					<th>수량</th>
					<th>소계</th>
					<th>비고</th>
				</tr>
				<form:form name="removeForm" method="put">
					<c:forEach items="${cart.cartItems}" var="item">
						<tr>
							<td>${item.value.car.cid}-${item.value.car.cname}</td>
							<td>${item.value.car.cprice}</td>
							<td>${item.value.quantity}</td>
							<td>${item.value.totalPrice}</td>
							<td>
								<a id = "item" href="javascript:ajaxremoveFromCart('${item.value.car.cid}')"
								class="btn btn-danger btn-sm">삭제</a>
								</td>
						</tr>
					</c:forEach>
				</form:form>
				<tr>  
					<th></th>
					<th></th>
					<th>총액</th>
					<th>${cart.grandTotal}</th>
					<th></th>
				</tr>
			</table>

			<a href="<c:url value="/cars" />" class="btn btn-secondary">
				&laquo; 쇼핑 계속하기</a>
		</div>
		<hr>

	</div>
</body>
</html>