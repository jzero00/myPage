<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Bootstrap 4.5.2 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>메인페이지</title>
</head>
<body>
	<ul class="nav flex-column">
		<li class="nav-item"><a class="nav-link active" href="<%=request.getContextPath() %>${menu.get(0).getUrl() }">${menu.get(0).getCode_name() }</a></li>
		<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
		<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
		<li class="nav-item"><a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a></li>
	</ul>
	<span></span>
	메인페이지에 접속하였습니다.
</body>
</html>