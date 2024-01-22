<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
List<Map<String, Object>> articleRows = (List<Map<String, Object>>) request.getAttribute("articleRows");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"">
<title>게시물 목록</title>
</head>
<body>

	<a href="https://www.naver.com" target="_blank">네이버</a>
	<a href="http://localhost:8081/JSP_AM_2024_01/article/list"
		target="_blank">버튼</a>
	<a href="/JSP_AM_2024_01/article/list" target="_blank">버튼</a>
	<a href="detail" target="_blank">디테일</a>

	<h2>게시물 목록</h2>

	<ul>
		<%
		for (Map<String, Object> articleRow : articleRows) {
		%>
		<li><a href="detail?id=<%=articleRow.get("id")%>"><%=articleRow.get("id")%>번, <%=articleRow.get("regDate")%>,<%=articleRow.get("title")%>,<%=articleRow.get("body")%></a></li>
		<%
		}
		%>
	</ul>



	<h2>게시물 목록 v3</h2>

	<ul>
		<%
		for (int i = 0; i < articleRows.size(); i++) {
		%>
		<li><%=articleRows.get(i).get("id")%>번, <%=articleRows.get(i).get("regDate")%>,<%=articleRows.get(i).get("title")%>,<%=articleRows.get(i).get("body")%></li>
		<%
		}
		%>
	</ul>

	<h2>게시물 목록 v2</h2>

	<ul>
		<%
		for (int i = 0; i <= 2; i++) {
		%>
		<li><%=articleRows.get(i).get("id")%>번, <%=articleRows.get(i).get("regDate")%>,<%=articleRows.get(i).get("title")%>,<%=articleRows.get(i).get("body")%></li>
		<%
		}
		%>
	</ul>

	<h2>게시물 목록 v1</h2>

	<ul>
		<li><%=articleRows.get(0).get("id")%>번, <%=articleRows.get(0).get("regDate")%>,<%=articleRows.get(0).get("title")%>,<%=articleRows.get(0).get("body")%></li>
		<li><%=articleRows.get(1).get("id")%>번, <%=articleRows.get(1).get("regDate")%>,<%=articleRows.get(1).get("title")%>,<%=articleRows.get(1).get("body")%></li>
		<li><%=articleRows.get(2).get("id")%>번, <%=articleRows.get(2).get("regDate")%>,<%=articleRows.get(2).get("title")%>,<%=articleRows.get(2).get("body")%></li>
	</ul>


</body>
</html>