<%@ page language="java" contentType="text/html; charset=utf-8"
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
    <script type="text/javascript" src="../js/menu.js"></script>
  </head>
  <body style="background-color:#000000">
  <%@include file="menu.jsp" %>
	<div class="container" style="color:#ffffff;">
    <h1 id="title" style="text-align:center;">Algorithm</h1>
	</div>
	<img src="../image/Sorting.gif" class="rounded float-left" style="width:43.5%;margin-left:4%;margin-right:4%; margin-bottom:20px;"
	title="Sorting Algorithms" alt="algorithm">
	<img src="../image/aStar.gif" class="rounded float-right" style="width:43.5%;margin-right:4%;margin-top:50px;"
	title="A* Algorithm" alt="algorithm">
	<img src="../image/JPS.gif" class="rounded float-left" style="width:43.5%;margin-left:4%;margin-right:4%;"
	title="Jump Point Search Algorithm" alt="algorithm">
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
	
	<%@ include file="modal.jsp" %>
    <% if(request.getAttribute("error")!=null){ %>
    <script type="text/javascript" src="/WebClass/js/modal.js"></script>
    <%request.setAttribute("error", null);} %>
  </body>
</html>