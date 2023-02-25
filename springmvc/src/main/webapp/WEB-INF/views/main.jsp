<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%@include file="header.jsp" %>
 <div class="container bg-warning shadow mx-auto p-5 w-75">
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<link href="../css/sign-in.css" rel="stylesheet">
<h2>Group Talk</h2>
<hr>
<div>
<div class = "input-group" >
<%-- <input id="id" type="hidden" value="<%=sid%>"> --%>
<input id="summernote" class="form-control" type="text" >
<button type="button" class="btn btn-primary" onclick="addItem()">추가</button>
</div>
<hr>
<div class="container mt-3" style="margin: auto;">
<table class="table">
	<thead>
		<tr>
	      <th scope="col">id</th>
	      <th scope="col" colspan=2>content</th>
	      <th scope="col">time</th>
		</tr>
	</thead>
	
<tbody id=ajaxTable class="table-group-divider">
</tbody>
</table>
</div>
</div>
</div>
<script>
      $('#summernote').summernote({
        placeholder: '내용을 입력하세요',
        tabsize: 2,
        height: 90,
        width: 550,
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['color', ['color']],
          ['insert', ['link', 'picture', 'video']],
          ['view', ['fullscreen', 'codeview', 'help']]
        ]
      });
     
    </script>
     
    <%@include file="footer.jsp" %>
    
</body>
</html>