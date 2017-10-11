<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Stoad's Blog</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<script type="text/javascript" src="../js/menu.js"></script>
</head>
<body style="background-color: #000000;">
	<%@ include file="menu.jsp"%>
	<div class="container">
		<h1 id="title" style="color: #ffffff; text-align: center;">OpenGL
			Project</h1>
	</div>
	<div class="card"
		style="width: 30%; margin-left: 2.5%; margin-right: 2.5%; float: left">
		<img class="card-img-top" src="../image/openGL.jpg"
			alt="Card image cap"
			style="padding: 10px; margin-top: 10px; background-color: #000000;">
		<div class="card-body" style="margin-bottom: 10px; margin-top: 10px;">
			<h4 class="card-title">Rendezvous Project</h4>
			<p class="card-text">
				Rocket Physics Simulation<br>Gravity<br>Acceleration<br>Drag
			</p>
		</div>
	</div>
	<div class="card" style="width: 30%; margin-right: 2.5%; float: left">
		<img class="card-img-top" src="../image/openGL2.jpg"
			alt="Card image cap"
			style="padding: 10px; margin-top: 10px; background-color: #000000;">
		<div class="card-body" style="margin-bottom: 10px; margin-top: 10px;">
			<h4 class="card-title">Momentum conservation</h4>
			<p class="card-text">
				Particle Physics Simulation<br>Gravity<br>Drag<br>Momentum
			</p>
		</div>
	</div>
	<div class="card" style="width: 30%; margin-right: 2.5%; float: left">
		<img class="card-img-top" src="../image/openGL3.jpg"
			alt="Card image cap"
			style="padding: 10px; margin-top: 10px; background-color: #000000;">
		<div class="card-body" style="margin-bottom: 10px; margin-top: 10px;">
			<h4 class="card-title">Matrix Transformation</h4>
			<p class="card-text">
				Cube Conversion<br>Multiply<br>Matirx<br>Cube
			</p>
		</div>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>
	<%@ include file="modal.jsp"%>
	<%
		if (request.getAttribute("error") != null) {
	%>
	<script type="text/javascript" src="/WebClass/js/modal.js"></script>
	<%
		request.setAttribute("error", null);
		}
	%>
</body>
</html>