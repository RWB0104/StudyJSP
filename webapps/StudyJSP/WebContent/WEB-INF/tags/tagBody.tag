<%@ tag body-content="scriptless" pageEncoding="UTF-8" %>
<%@ tag import="java.util.Date" %>

<%
	Date now = new Date();
%>

오늘 날짜: <%=now%>
<hr />
<jsp:doBody />