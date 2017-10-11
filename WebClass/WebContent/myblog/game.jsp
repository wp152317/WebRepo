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
<link rel="stylesheet" href="../css/index.css">
</head>
<body style="background-color: #000000">
	<div class=setOpacity></div>
	<%@ include file="menu.jsp"%>
	<div class="container">
		<h1 id="title" style="color: #ffffff; text-align: center;">즐겨하는
			게임</h1>
	</div>
	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner"
			style="max-width: 1080px; margin-left: auto; margin-right: auto;">
			<div class="carousel-item active">
				<img class="d-block w-100" src="../image/Game1.jpg"
					alt="First slide">
				<div class="carousel-caption d-none d-md-block">
					<h3>StarCraft</h3>
					<p>Blizzard Entertainment</p>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="../image/Game2.jpg"
					alt="Second slide">
				<div class="carousel-caption d-none d-md-block">
					<h3>League of Legends</h3>
					<p>Riot Games</p>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="../image/Game3.jpg"
					alt="Third slide">
				<div class="carousel-caption d-none d-md-block">
					<h3>Girl's frontline</h3>
					<p>미카팀</p>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
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

	<!-- Modal -->
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