<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- Bootstrap 4.5.2 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	게시판
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<%=request.getContextPath()%>${req_url }">${req_url }</a></li>
			<li class="breadcrumb-item active" aria-current="page">Library</li>
		</ol>
	</nav>
	<c:if test="${boardList.size() != 0 }">
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">작성자</th>
					<th scope="col">제목</th>
					<th scope="col">작성일</th>
					<th scope="col">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${boardList }" var="boardList">
					<tr>
						<td>${boardList.getWriter() }</td>
						<td>${boardList.getTitle() }</td>
						<td><fmt:formatDate value="${boardList.getRegdate() }" pattern="yyyy/MM/dd HH:mm:ss"/> </td>
						<td>${boardList.getView_cnt() }</td>					
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>
	</div>
<%-- 		${boardList.get(0).getWriter() }	 --%>
</body>
</html>