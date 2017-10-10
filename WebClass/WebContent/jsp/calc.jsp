<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>숫자 합 계산</title>
</head>
<body>
<form method=post>
<input type="number" name="num" min=1 required>
<button type="submit">계산</button>
</form>
<%-- 스크립틀릿 tag로 1~입력받은 숫자까지의 합 구하기 --%>
<%-- 결과 출력 시 변수 값은 표현식 tag로 작성하기 (jsp 파일 로딩시에는 보이지 않음) --%>
<%
	int cnt;
	try{
		cnt = (Integer)session.getAttribute("cnt");
	}catch(NullPointerException e){
		cnt=0;
		out.println("최초 호출");
	}
	session.setAttribute("cnt", ++cnt);
%>
<h1><%=cnt %> </h1>
<%
	//현재 일시 구하기
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM--dd hh:mm:ss a");
%>
현재 일시는 <%=sdf.format(new Date()) %>
</body>
</html>