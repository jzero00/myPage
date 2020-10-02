<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	환경설정 화면
	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">메뉴 코드</th>
				<th scope="col">메뉴 이름</th>
				<th scope="col">URL</th>
				<th scope="col">메뉴 레벨</th>
				<th scope="col">메뉴 사용여부</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${menu }" var="menu_list">
			<tr>
				<td>${menu_list.getMcode() }</td>
				<td>${menu_list.getCode_name() }</td>
				<td>${menu_list.getUrl() }</td>
				<td>${menu_list.getCode_level() }</td>
				
				<td>
					<select class="custom-select">
						<option value="0" <c:if test="${menu_list.getEnable() == 0}">selected</c:if>>미사용</option>
						<option value="1" <c:if test="${menu_list.getEnable() == 1}">selected</c:if>>사용</option>
<%-- 						<option value="1" <c:if test="${menu_list.getEnable() == 1 ? 'selected' : ''}"  />>사용</option> --%>
					</select>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>