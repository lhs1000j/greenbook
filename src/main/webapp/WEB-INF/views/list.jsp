<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
<body class="text-center container-sm">
<img class="mb-4" src="img/logo.png" alt="" width="72" height="57">
<h1 class="h3 mb-3 fw-normal">Q&A 게시판</h1>
<table class="table">
	<thead class="table-light table table-hover">
	<tr>
		<th scope="col">번호</th>
		<th scope="col">이름</th>
		<th scope="col">제목</th>
		<th scope="col">작성일</th>
		<th scope="col">조회수</th>
	</tr>
	</thead>
	<tbody class="table-group-divider">
	<c:forEach items="${list}" var="dto">
		<tr>
			<!-- 여기서는 BDto.java에 있는 걸 적어야한다. -->
			<td>${dto.bId}</td>
			<td>${dto.bName}</td>
			<td>
				<a href="content_view?bId=${dto.bId}">${dto.bTitle}</a>
			</td>
			<td>${dto.bDate}</td>
			<td>${dto.bHit}</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
<form class="d-flex" role="search">
	<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
	<button class="btn btn-outline-success" type="submit">Search</button>
</form>
	<tr>
		<td colspan="5">
			<!-- write_view는 컨트롤러의 RequestMapping으로 지정한 곳으로 가게 된다. -->
			<a href="write_view">글작성</a>
		</td>
	</tr>
</body>
</html>















