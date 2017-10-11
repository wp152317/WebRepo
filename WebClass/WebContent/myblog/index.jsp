<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<title>Stoad's Blog</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <script type="text/javascript" src="/WebClass/js/menu.js"></script>
    <style>
    </style>
    <link rel="stylesheet" href="/WebClass/css/index.css">
  </head>
  <body class="background">

  <%@ include file="menu.jsp" %>
	<div class="container indexFont indexFont-Background">
    <h1 id="title" class="display-1">Stoad's Blog</h1>
    <p class="h4"> 현재 공부하고 있는 openGL과 알고리즘 등에 대해 소개하며 취미로 즐기고 있는 게임들에 대해서도 나와있는 개인 블로그</p>
	</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
	 
	<!-- Modal -->
	<%@ include file="modal.jsp" %>
    
    <% if(request.getAttribute("error")!=null){ %>
    <script type="text/javascript" src="/WebClass/js/modal.js"></script>
    <%request.setAttribute("error", null);} %>
  </body>
</html>