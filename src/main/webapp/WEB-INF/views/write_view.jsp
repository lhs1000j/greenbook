<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write_view</title>
	<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
	<script type="text/javascript">
		function fn_submit() {
			var formData = $("#frm").serialize(); // serialize() 메서드는 폼 요소 자체
			
			$.ajax({
			  // 리턴타입은 생략하면 자동으로 가게 된다.
				type : "post" // 전송방식 설정
			  , data : formData // 갖고오는 데이터 위에 변수로 설정했음
			  , url : "write" // 찾아가는 값 (/write) 로 가게 된다.
			  , success : function (data) { // 성공시
				  alert("저장완료")
			  	  location.href="list";
				  }
			  , error : function (data) { // 실패시
				  alert("오류 발생");
				  }
			});
		}
	</script>
</head>
<body>
	<table width="500" border="1">
		<form id="frm">
			<tr>
				<td>이름</td>
				<td>
					<input type="text" name="bName" size="50">
				</td>
				</tr>
				<tr>
					<td>제목</td>
				<td>
					<input type="text" name="bTitle" size="50">
				</td>
				</tr>
				<tr>
					<td>내용</td>
				<td>
					<textarea rows="10" name="bContent"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<!-- ajax 사용 -->
					<input type="button" onclick="fn_submit()" value="입력">
					&nbsp;&nbsp;
					<a href="list">목록보기</a>
				</td>
			</tr>
		</form>
	</table>
</body>
</html>