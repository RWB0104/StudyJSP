<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>jstlEx09.jsp</title>
	
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
	<link href="../../css/style.css" rel="stylesheet" />
	
	<style type="text/css">
		* {
			font-family: "Noto Sans KR", "Malgun Gothic", sans-serif;
		}
	</style>
</head>

<body>
	<h3>JSTL sql 태그예제 - query</h3>
	
	<sql:query var="rs" dataSource="jdbc/jsptest">
		SELECT * FROM `member`
	</sql:query>
	
	<table>
		<%-- 필드명 출력 --%>
		<tr class="label2">
			<c:forEach var="columnName" items="${rs.columnNames}">
				<th><c:out value="${columnName}" /></th>
			</c:forEach>
		</tr>
		
		<%-- 레코드의 수만큼 반복한다. --%>
		<c:forEach var="row" items="${rs.rowsByIndex}">
			<tr>
				<%-- 레코드의 필드 수만큼 반복한다. --%>
				<c:forEach var="column" items="${row}" varStatus="i">
					<td>
						<%-- 해당 필드값이 null이 아니면 --%>
						<c:if test="${column != null}">
							<c:out value="${column}" />
						</c:if>
						
						<c:if test="${column == null}" >
							&nbsp;
						</c:if>
					</td>
				</c:forEach>
			</tr>
		</c:forEach>
	</table>
</body>

</html>