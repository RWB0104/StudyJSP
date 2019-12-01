<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>out 객체 예제 - getBufferSize(), getRemaining(), println() 메소드 사용</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<%
		// 버퍼 크기 얻어냄
		int bufferSize = out.getBufferSize();
	
		// 남은 버퍼의 크기 얻어냄
		int remainSize = out.getRemaining();
		
		// 사용한 버퍼 크기 얻어냄
		int usedSize = bufferSize - remainSize;
	%>
	
	<h2>out 객체 예제 - getBufferSize(), getRemaining(), println() 메소드 사용</h2>
	
	<b>현재 페이지의 버퍼 사용현황</b><br />
	출력 버퍼의 전체 크기 : <%=bufferSize%>byte<br />
	현재 사용한 버퍼의 크기 : <%=usedSize%>byte<br />
	남은 버퍼의 크기 : <%=remainSize%>byte
</body>

</html>