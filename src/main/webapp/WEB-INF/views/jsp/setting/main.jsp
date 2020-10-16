<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메뉴 설정</title>
<!-- Bootstrap 4.5.2 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	환경설정 화면
	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">코드</th>
				<th scope="col">이름</th>
				<th scope="col">URL</th>
				<th scope="col">레벨</th>
				<th scope="col">사용여부</th>
				<th scope="col">상위메뉴</th>
				<th scope="col">수정</th>
				<th scope="col">삭제</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${menu }" var="menu_list">
				<c:if test="${menu_list.getIscategory() eq 0 }">
				
				<tr id="menu_content" style="background: yellow;">
					<td>${menu_list.getMcode() }</td>
					<td>${menu_list.getCode_name() }</td>
					<td>${menu_list.getUrl() }</td>
					<td>${menu_list.getCode_level() }</td>
					<!-- 사용 여부 select box -->
					<c:if test="${menu_list.getMcode() ne 'MENU99' }">
					<td>
						<select class="custom-select">
							<option value="0" <c:if test="${menu_list.getEnable() == 0}">selected</c:if>>미사용</option>
							<option value="1" <c:if test="${menu_list.getEnable() == 1}">selected</c:if>>사용</option>
						</select>
					</td>
					</c:if>
					<c:if test="${menu_list.getMcode() eq 'MENU99' }">
					<td>
					</td>
					</c:if>
					<td>${menu_list.getUpcode() }</td>
					
					<td><button type="button" class="btn btn-primary" onclick="javascript:edit_menu('${menu_list.getCode_name() }');">수정</button></td>
					<td><button type="button" class="btn btn-warning" onclick="javascript:delete_menu('${menu_list.getCode_name() }');">삭제</button></td>
				</tr>
						
				</c:if>
				<c:if test="${menu_list.getIscategory() eq 1 }">
					<tr id="menu_content">
						<td>${menu_list.getMcode() }</td>
						<td>${menu_list.getCode_name() }</td>
						<td>${menu_list.getUrl() }</td>
						<td>${menu_list.getCode_level() }</td>
						<!-- 사용 여부 select box -->
						<td>
							<select class="custom-select">
								<option value="0" <c:if test="${menu_list.getEnable() == 0}">selected</c:if>>미사용</option>
								<option value="1" <c:if test="${menu_list.getEnable() == 1}">selected</c:if>>사용</option>
							</select>
						</td>
						<td>
						<%-- option으로 선택해서  해당 메뉴의 카테고리를 선택 미완... --%>
						<select class="custom-select" id="category">
							<c:forEach items="${category }" var="category">
								<option value="${category.getMcode() }"
								<c:if test="${menu_list.getUpcode() eq category.getMcode() }">selected</c:if>
								>${category.getCode_name() }</option>
							</c:forEach>
						</select>
						</td>
						<td><button type="button" class="btn btn-primary" onclick="javascript:edit_menu('${menu_list.getCode_name() }');">수정</button></td>
						<td><button type="button" class="btn btn-warning" onclick="javascript:delete_menu('${menu_list.getCode_name() }');">삭제</button></td>
					</tr>
				</c:if>
			</c:forEach>
<!-- 			<tr>
				<td><input type="text" class="form-control" name="mcode" id="mcode"></td>
				<td><input type="text" class="form-control" name="code_name" id="code_name"></td>
				<td><input type="text" class="form-control" name="url" id="url"></td>
				<td><input type="text" class="form-control" name="code_level" id="code_level"></td>
				<td><button type="button" class="btn btn-primary" id="btn_add" name="메뉴추가">메뉴 추가</button></td>
			</tr> -->
		</tbody>
	</table>
	
	</div>
</body>
</html>
<script>
	var btn_add = document.getElementById('btn_add');
	btn_add.addEventListener("click",addMenu);
	
	function addMenu(){
		alert(btn_add.name);
		var flag = validation();
		if (flag == true){
			if(confirm('메뉴를 등록하시겠습니까?')){
				
			}
		}
	}
	
	function validation(){
		<!-- mcode null 체크 -->
		var chk = document.getElementById('mcode').value;
		if(chk == ''){
			alert('메뉴 코드를 입력해주세요');
			return false;
		}
		
		chk = document.getElementById('code_name').value;
		if(chk == ''){
			alert('메뉴 이름을 입력해주세요');
			return false;
		}	
		
		chk = document.getElementById('url').value;
		if(chk == ''){
			alert('url을 입력해주세요');
			return false;
		}	
	}
	
	function edit_menu(code_name){
		if(confirm(code_name+'메뉴를 수정하시겠습니까?')){
			alert('삭제 완료');
		}
	}
	
	function delete_menu(code_name){
		if(confirm(code_name+'메뉴를 삭제하시겠습니까?')){
			alert('삭제 완료');
		}
// 		alert(code_name);
	}
</script>