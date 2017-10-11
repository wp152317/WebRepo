<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<title>Stoad's Blog_SignOn</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <script type="text/javascript" src="../js/menu.js"></script>
    <script>
    	function sign_on(){
    		var numString=document.getElementById("num").value;
			var num=numString*1;
			var nme=document.getElementById("nme").value;
    		if(numString==""){
    			alert("번호를 입력해주세요.");
    			return;
    		}
    		if(num<=0||num>=100){
    			alert("번호를 1~99사이의 값으로 입력해주세요.");
    			return;
    		}
    		if(nme==""){
    			alert("이름을 입력해주세요.");
    			return;
    		}
    		var Num=$('#num').val();
    		var Nme=$('#nme').val();
    		var obj = document.getElementsByName('grade');
    		var Grd = '';
    		for( i=0; i<obj.length; i++ ) {
    			if(obj[i].checked) {
    				Grd = obj[i].value;
    			}
    		}
    		obj=document.getElementsByName('cls')[0];
    		var Cls=obj.options[obj.selectedIndex].value;
    		var ID=document.getElementById('id').value;
    		var PW=document.getElementById('pwd').value;
    		var PR=document.getElementById('pwr').value;
    		if(ID==""){
    			alert("ID를 입력해주세요");
    			return;
    		}
    		if(PW==""){
    			alert("비번을 입력해주세요");
    			return;
    		}
    		console.log(PW,PR);
    		if(PW!=PR){
    			alert("비밀번호와 비밀번호 확인과 다릅니다");
    			return;
    		}
    		
    		$.post("http://httpbin.org/post",
   				{ID : ID, PW: PW, Grade : Grd,Class : Cls,Num: Num, Name : Nme},
   				function(data){
   					//alert(data.form.id+"님 로그인 됨");
   					var mM=$('#mM');
   					console.log(data.form.Name);
   					mM.find('.modal-body').text(data.form.ID+"님 회원가입에 성공하였습니다.");
   					mM.modal();
   				}
   			);
    	}
    </script>
  </head>
  <body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<a class="navbar-brand" href="index.jsp">HOME</a>
      <button class='btn btn-outline-success my-2 my-sm-0' onclick="sign_on()">Sign On</button>
</nav>
	<div class="container">
	<form>
		<input type=radio name="grade" value="1" style=margin:3px; checked>1학년
		<input type=radio name="grade" value="2" style=margin:3px;>2학년
		<input type=radio name="grade" value="3" style=margin:3px;>3학년<br>
		<select name="cls" style=margin:3px;>
			<option value='1' selected>1</option>
			<option value='2'>2</option>
			<option value='3'>3</option>
			<option value='4'>4</option>
			<option value='5'>5</option>
			<option value='6'>6</option>
		</select>반<br>
		<input id=num type=number placeholder="nn" style=margin:3px; required>번<br>
		<input id=nme type=text placeholder="이름" size=20 maxlength=20 style=margin:3px; required><br>
		<input id=id type=text placeholder="ID" size=20 maxlength=20 style=margin:3px; required><br>
		<input id=pwd type=password placeholder="PW" size=20 maxlength=20 style=margin:3px; required><br>
		<input id=pwr type=password placeholder="Confirm PW" size=20 maxlength=20 style=margin:3px; required>
	</form>
	</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" ></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" ></script>
	
	<!-- Modal -->
	<%@ include file="modal.jsp" %>
    
    <script>
	$(document).ready(function (){
		$('#loginForm').submit(function(event){
			event.preventDefault();
			var id=$('#id').val();
			var pw=$('#pw').val();
			console.log(id,pw);
			//ajax방식
			$.post("http://httpbin.org/post",
				{id: id, pw : pw},
				function(data){
					//alert(data.form.id+"님 로그인 됨");
					var mM=$('#mM');
					console.log(data.form.id);
					mM.find('.modal-body').text(data.form.id+"님 로그인 됨");
					mM.modal();
				}
			);
		})
	})
    </script>
  </body>
</html>