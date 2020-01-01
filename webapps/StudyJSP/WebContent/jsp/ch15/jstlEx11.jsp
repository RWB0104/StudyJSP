<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>jstlEx11.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<h3>JSTL functions 라이브러리의 함수 사용 예제</h3>
	
	<c:set var="str1" value="test String" />
	<c:set var="str2" value="<aaa>여기</aaa>를 클릭해서 다운로드" />
	
	<p>str1 출력 : ${str1}</p>
	<p>str2 출력 : ${fn:escapeXml(str2)}</p>
	
	<c:if test="${fn:contains(str1, 'test')}">
		<p>test 문자열 포함됨</p>
	</c:if>
	
	<p>indexOf(str1, "t") : ${fn:indexOf(str1, 't')}</p>
	<p>length(str2) : ${fn:length(str2)}</p>
	
	<c:set var="spStr" value="${fn:split(str1, ' ')}" />
	<p>fn:split(str1, " ") 수행 후 첫 원소값 : ${spStr[0]}</p>
	<p>join(str1, "-") ${fn:join(spStr, '-')}</p>
	
	<p>replace(str1, "test", "테스트") : ${fn:replace(str1, 'test', '테스트')}</p>
	<p>startsWith(str1, 'test') : ${fn:startsWith(str1, 'test')}</p>
	<p>substring(str1, 0, 3) : ${fn:substring(str1, 0, 3)}</p>
	<p>substringAfter(str1, " ") : ${fn:substringAfter(str1, ' ')}</p>
	<p>toLowerCase(str1) : ${fn:toLowerCase(str1)}</p>
	<p>toUpperCase(str1) : ${fn:toUpperCase(str1)}</p>
</body>

</html>