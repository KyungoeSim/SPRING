<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

<%String sid = (String)session.getAttribute("id");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark" aria-label="Tenth navbar example">
    <div class="container-fluid">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample08" aria-controls="navbarsExample08" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse justify-content-md-center" id="navbarsExample08">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="/main.jsp">Group talk</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">피드메뉴</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="../feed/myfeed.jsp">내 피드보기</a></li>
              <li><a class="dropdown-item" href="/main.jsp">전체 피드보기</a></li>
            </ul>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">회원메뉴</a>
            <ul class="dropdown-menu">
            <% if(sid==null){ %>
              <li><a class="dropdown-item" href="../user/login.jsp">로그인</a></li>
              <li><a class="dropdown-item" href="../user/signup.jsp">회원가입</a></li>


             <% }else{ %>
              <li><a class="dropdown-item" href="../user/logout.jsp">로그아웃</a></li>
              <li><a class="dropdown-item" href="../user/signedit.jsp">정보변경</a></li>
              <li><a class="dropdown-item" href="../user/signout.jsp">회원탈퇴</a></li>
             <% };  %> 
            </ul>
          </li>
          
           <% if(sid != null && sid.equals("admin")){ %>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">관리메뉴</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="/temp.jsp">신청목록</a></li>
              <li><a class="dropdown-item" href="../feed/feedall.jsp">피드 관리</a></li>
            </ul>
          </li>
           <% };  %> 
        </ul>
        <div class="px-3 py-2">
      <div class="container d-flex flex-wrap justify-content-center">
      <div class="text-end">
      		<%if (sid==null) {%>
      		<a href="../user/login.jsp"><span class="text-info bg-dark"><small>로그인 하세요</small></span></a>
      		<%} else {%>
      		<span class="text-warning bg-dark"><small><%=sid%> 님 로그인 하셨습니다.</small></span>
      		<%}; %>
      </div>
      </div>
      </div>
      </div>
    </div>
  </nav>
  <link href="../css/sign-in.css" rel="stylesheet">
</body>
</html>