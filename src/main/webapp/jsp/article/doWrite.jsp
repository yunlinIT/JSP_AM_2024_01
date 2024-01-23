<%@ page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
Map<String, Object> articleRow = (Map<String, Object>) request.getAttribute("articleRow");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"">
<title>게시물 등록</title>
</head>
<body>

	<h2>게시물 등록</h2>
	
	게시물이 등록되었습니다.

				<div><a style="color:green" href="list">리스트로 돌아가기</a></div>



</body>
</html>