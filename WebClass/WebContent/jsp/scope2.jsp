<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	if("rValue".equals(request.getAttribute("key"))){
%>
rValue<br>
<%
	}if("sValue".equals(session.getAttribute("key"))){
%>
sValue<br>
<%
	}if("appValue".equals(application.getAttribute("key"))){
%>
appValue<br>
<%
	}
%>
</body>
</html>