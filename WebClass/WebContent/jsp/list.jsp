<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<table border=1>
	<thead>
	<tr>
	<th> #.</th>
	<th> id</th>
	<th> name</th>
	<th> nickname</th>
	</tr>
	</thead>
	<tbody>
	<c:if test="${!empty userList}">
	<c:forEach var="item" items="${userList }" varStatus="status">
		<tr>
		<td>${status.count }</td>
		<td>${item.id }</td>
		<td>${item.name }</td>
		<td>${item.nickname }</td>
		</tr>
	</c:forEach>
	</c:if>
	</tbody>
</table>
</body>
</html>