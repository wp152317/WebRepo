<!-- Direct Tag ������ -->
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%-- 2. comment tage JSP �ּ� --%>
<%-- 3. declaration tag ����� --%>
<%! private static final String DEFAULT_NAME = "Guest"; %>
<%-- 4. ��ũ��Ʋ�� tag --%>
<%
	String name = request.getParameter("name2");
	if(name==null)name=DEFAULT_NAME;
%>
<%-- 5. expression tag --%>
<h1>Hello, <%=name.toUpperCase() %></h1>
</body>
</html>