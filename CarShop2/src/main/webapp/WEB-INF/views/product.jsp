<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Car Detail</title>
    
    <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
    
    <script>
        function removeCar(cid) {
            $.ajax({
                type:"POST",
                url:"/cars/remove",
                data:{cid: cid },
                beforeSend : function(xhr)
                {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
                    xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
                },
                success: function(result) {
                    alert("제품이 삭제되었습니다.")
                },
                error:function (request, status, error) {
                    alert(request.status + " " + request.responseText);
                }
            })

            window.location.reload();
        }
    </script>
</head>
<body>

<div class="container">
<div class="container">
    <div style="padding-top: 50px">
        <table class="table table-hover">
            <tr>
                <th>차량 ID</th>
                <th>이름</th>
                <th>가격</th>
                <th>종류</th>
                <th>비고</th>
            </tr>
            <form:form name="removeForm" method="put">
                <c:forEach items="${carList}" var="car">
                    <tr>
                        <td>${car.cid}</td>
                        <td>${car.cname}</td>
                        <td>${car.cprice}</td>
                        <td>${car.ccate}</td>
                        <td>
                           <p><a href="javascript:removeCar('${car.cid}')" class="btn btn-danger btn-sm">삭제</a>
                              <a href="<c:url value="/cars/update?id=${car.cid}"/>" class="btn btn-success btn-sm">수정</a>
                        </td>
                    </tr>
                </c:forEach>
            </form:form>
        </table>
    </div>
    <hr>
</div>
</div>
</body>
</html>