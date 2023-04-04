<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
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
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarsExample02" aria-controls="navbarsExample02"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExample02">
			<ul class="navbar-nav me-auto">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="/">홈</a></li>
				<li class="nav-item"><a class="nav-link" href="/cars">차량 보기</a></li>
				<li class="nav-item"><a class="nav-link" href="/boards">게시판</a>
				</li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> 회원관리
				</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="/login">로그인</a></li>
						<li><a class="dropdown-item" href="/logout">로그아웃</a></li>
					</ul></li>
			</ul>
			<c:choose>
			<c:when test="${isLogOn == true}">
			<form method="post" action="/logout">
				<input type="submit" class="btn btn-success" value="Logout" />
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			</form>
			</c:when>
			<c:otherwise>
				<form method="post" action="/login">
				<input type="submit" class="btn btn-primary" value="Login" />
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			</form>
			</c:otherwise>
			</c:choose>
		</div>
	</div>
</nav>
<div class="my-5">
	<div class="alert alert-dark">
		<div class="container">
			<h1>영수증</h1>
		</div>
	</div>
</div>	
	


<div class="container" >

    <form:form modelAttribute="order" class="form-horizontal">
    <div class="well col-md-9 col-md-offset-2" style="background:#fafafe; padding: 20px">
       <div class="text-center">
          <h1>영수증</h1>
       </div>
       <div class="row">
          <div class="col-md-6">
             <address>
             <strong>배송 주소</strong> <br>
             성명 : ${order.shipping.name}<br>
             우편번호 : ${order.shipping.address.zipCode}<br>
             주소 : ${order.shipping.address.addressName}  ${order.shipping.address.detailName} (${order.shipping.address.country}) <br>
             </address>
          </div>
          <div class="col-md-6 text-right">
             <p> <em>배송일: <fmt:formatDate type="date" value="${order.shipping.date}" /></em></p>
          </div>
       </div>
       <div class="row">
          <div class="col-md-9">
             <address> 
              <strong>청구주소</strong> <br>
               성명 : ${order.customer.name}<br>
               우편번호 :${order.customer.address.zipCode}<br>
               주소 : ${order.customer.address.addressName} ${order.customer.address.detailName} (${order.customer.address.country})<br>
                  HP : ${order.customer.phone}<br>
             </address>
          </div>
       </div>
       <div class="row">
          <table class="table table-hover">
          <thead>
           <tr><th>제품</th>
              <th>#</th>
              <th class="text-center">가격</th>
               <th class="text-center">소계</th>
            </tr>
            </thead>
            <tbody>
             <c:forEach var="cartItem" items="${order.cart.cartItems}">
             <tr>
               <td > <em>${cartItem.value.car.cname}</em></td>
               <td  style="text-align: center">${cartItem.value.quantity}</td>
               <td class="text-center">${cartItem.value.car.cprice}원</td>
               <td class="text-center">${cartItem.value.totalPrice}원</td>
             </tr>
             </c:forEach>
             <tr>
               <td> </td>
             <td> </td>
             <td class="text-right"><h5> <strong>총액: </strong></h5></td>
             <td class="text-center text-danger"><h4><strong>${order.cart.grandTotal}</strong></h4></td>
            </tr>
            </tbody>
           </table>
      <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" />
      <button class="btn btn-default" name="_eventId_backToShippingInfo">이전</button>
      <button type="submit" class="btn btn-success"  name="_eventId_orderConfirmed"> 주문완료 </button>
      <button class="btn btn-default" name="_eventId_cancel">취소</button>
       </div>
    </div>
    </form:form>
   </div>










<nav class="navbar fixed-bottom navbar-expand-sm navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Car Shop</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/cars">자동차 보기</a>
        </li>
      </ul>
    </div>
  </div>
</nav>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>