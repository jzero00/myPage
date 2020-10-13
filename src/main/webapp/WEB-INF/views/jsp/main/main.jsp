<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<c:forEach items="${menu }" var="menu_list">
			<li class="nav-item"><a class="nav-link active" category="${menu_list.getIscategory() }" href="<%=request.getContextPath() %>${menu_list.getUrl() }">${menu_list.getCode_name() }</a></li>		
		</c:forEach>
<!-- 		<li class="nav-item"><a class="nav-link" href="#">Link</a></li> -->
<!-- 		<li class="nav-item"><a class="nav-link" href="#">Link</a></li> -->
<!-- 		<li class="nav-item"><a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a></li> -->
	</ul>
	<span>메인페이지에 접속하였습니다.</span>
	
</body>

</html>
<script>

</script>