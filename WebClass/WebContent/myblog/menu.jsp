<%@page import="org.dimigo.vo.MemberVo"%>
<%@ page language="java" pageEncoding="utf-8"%>
<script type="text/javascript" src="/WebClass/js/menu.js"></script>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<a class="navbar-brand" href="/WebClass/myblog/index.jsp">HOME</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class='collapse navbar-collapse' id='navbarSupportedContent'>
		<ul class='navbar-nav mr-auto'>
			<li class='nav-item' onMouseOver='menu_in(this)'
				onMouseOut='menu_out(this)'><a class='nav-link'
				href='/WebClass/myblog/openGL.jsp'>OpenGL<span class='sr-only'>(current)</span></a></li>
			<li class='nav-item' onMouseOver='menu_in(this)'
				onMouseOut='menu_out(this)'><a class='nav-link'
				href='/WebClass/myblog/algorithm.jsp'>Algorithm</a></li>
			<li class='nav-item' onMouseOver='menu_in(this)'
				onMouseOut='menu_out(this)'><a class='nav-link'
				href='/WebClass/myblog/game.jsp'>Game</a></li>
		</ul>
		<%
			if ((MemberVo) session.getAttribute("user") == null) 
			{
		%>
		<div class='form-inline my-2 my-lg-0'>
			<form id='loginForm' action="/WebClass/bloglogin" method="post">
				<input class='form-control mr-sm-2' id='id' name='id' type='text'
					placeholder='ID' aria-label='id' required> <input
					class='form-control mr-sm-2' id='pw' name='pw' type='password'
					placeholder='PASSWORD' aria-label='pw' required>
				<button class='btn btn-success my-2 my-sm-0' type='submit'>Sign
					In</button>
			</form>
			<a href="/WebClass/myblog/signOn.jsp" style="margin-left: 9px">
				<button class='btn btn-success my-2 my-sm-0'>Sign On</button>
			</a>
		</div>
		<script type="text/javascript">
			<%
			MemberVo mv=((MemberVo)session.getAttribute("error"));
			if(mv!=null){
				%>
					document.getElementById("id").value='<%=mv.getId()%>'
				<%	
			}
			%>
		</script>
		<%
			} else {
		%>
		<div style="font: arial; padding: 0px;">
			<img src="/WebClass/image/d.jpg" title="Gosmdochi"
				style="width: 30px; height: 30px; object-fit: cover; border-radius: 50%; ">
			<div class="btn-group" style="margin:0px;">
				<button type="button" class="btn dropdown-toggle"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
					style="background-color: rgba(255, 255, 255, 0); color: white;padding:7px;margin-left:3px;">
					<%=((MemberVo) session.getAttribute("user")).getName()%>
				</button>
				<div class="dropdown-menu" style="width: 0; min-width: 85px;">
					<a class="dropdown-item" href="/WebClass/bloglogout"
						style="padding: 0px; text-align: center">Sign Out</a>
				</div>
			</div>
		</div>
		<%
			}
		%>
	</div>
</nav>