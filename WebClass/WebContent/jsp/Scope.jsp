<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<form action="/WebClass/scope" method="post">
	<input type="text" name='id'>
	<input type="hidden" name='pwd' value='test'>
	<button type='submit'>로그인</button>
</form>
			<script>
<%
	if(request.getAttribute("error")!=null){
%>
alert('<%= request.getAttribute("error")%>');
<%
	}
%>
			</script>
<h1>rS:${key}</h1>
<h1>sS:${sessionScope.key}</h1>
	<hr>
<form action="/WebClass/jsp/scope2.jsp" method="post">
	<button type='submit'>전송2</button>
</form>
</body>
</html>