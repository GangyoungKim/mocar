<%@page import="dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="UTF-8">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>mocar</title>
<link rel="stylesheet" type="text/css" href="css/myPage.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

<style>
.nav-link:hover {
	color: #fff;
	background-color: #0d6efd;
}

#slider {
	width: 50%;
}

#slideList>p {
	display: none;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css"
	integrity="sha256-p6xU9YulB7E2Ic62/PX+h59ayb3PBJ0WFTEQxq0EjHw="
	crossorigin="anonymous" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.js"
	integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30="
	crossorigin="anonymous"></script>
	
<script>
	$(document).ready(function() {
		var imgList = $('#slideList p');

		$('#slider').slider({
			min : 0,
			max : 119,
			value : 1,
			slide : function(event, ui) {
				imgList.hide();
				imgList.eq(ui.value).show();
			}

		});
	});
</script>

</head>
<body>
	<!-- 로그인 -->
	
	<% 
	String test1 = (String)session.getAttribute("login2");	// 로그인 했을 때 loginAction에서 받아온 세션 이름 가져오기 (userid,userpw)

	if(test1 != null){										// null 값이 아니라면 
	%>
	<script>
		$(function(){										// 로그인 버튼 없어짐, 로그아웃, 마이페이지 버튼 생성
			document.getElementById('login_text').style.display = "none";
			document.getElementById('logout_text').style.display = "block";
			document.getElementById('mypage_text').style.display = "block";
		});
		
	</script>
	
	<% } %>
	
	<!-- mypage -->
	

<%-- 	<c:set var="login_name" value="${requestScope.login_name }" /> --%>

	<!-- mypage 회원이름 불러오기 계속 유지되야 하므로 sessionScope으로 설정, loginAction에서 설정해준 login_name 값 가져오기 -->
	<c:set var="login_name" value="${sessionScope.login_name }" />
	
	<!-- 회원정보 -->
	<c:set var="user_info" value="${sessionScope.user_info }" />
	
	<!-- 비밀번호 변경 -->
	<%
		String new_pw = (String)session.getAttribute("new_pw");
		
	if(new_pw != null){
	%>
	<script>
		$(document).ready(function(){
			
			$("#click_pw").click(function(e){
				e.preventDefault();
				$("#new_pw2").css('display','block');	
			});
			
		});
	</script>
		<%}%>
	
	<!-- 쿠폰 -->
	<c:set var="coupon" value="${sessionScope.coupon }" />
	
	<!-- id찾기 -->
	<!-- alert에  idAction에서 설정해준 message 값 가져오기 req.setAttribute("message","아이디는 "+ user_id +" 입니다."); -->
	<c:set var="message" value="${requestScope.message }" />
	
	
	<c:if test="${not empty param.flag }">
		<c:if test="${not param.flag }">
			<script>
				alert("로그인 실패");
			</script>
		</c:if>
	</c:if>
	
	<!-- 아이디 찾기  -->
	<c:if test="${not empty param.flagid }">
		<c:if test="${not param.flagid }">
			<script>
				alert("아이디 찾기 실패");
			</script>
		</c:if>
	</c:if>
	<c:if test="${not empty param.flagid2 }">
		<c:if test="${not param.flagid2}">
			<script>
				alert("아이디를 찾았습니다. \n${message } " );
			</script>
		</c:if>
	</c:if>
	
	
	<!-- PW찾기 -->
	<c:if test="${not empty param.flagpw2 }">
		<c:if test="${not param.flagpw2}">
			<script>
				alert("비밀번호를 찾았습니다. \n${message } " );
			</script>
		</c:if>
	</c:if>
	
	<c:if test="${not empty param.flagpw }">
		<c:if test="${not param.flagpw }">
			<script>
				alert("비밀번호찾기 실패");
			</script>
		</c:if>
	</c:if>

	<div class="row g-0">
		<div
			class="d-flex flex-column p-3 bg-light order-first col-md-3 col-lg-2">
			<a href="/mocar/index.jsp"
				class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
				<span class="fs-4">Logo </span>
			</a>
			<hr>
			<!-- 헤더 메뉴 경로 -->
			<ul class=" nav nav-pills flex-column" id="navbarToggler8">
				<li class="nav-item"><a href="${pageContext.request.contextPath}/mocar/CarinfoList.mc" class="nav-link link-dark"
					aria-current="page"> 렌트예약</a></li>
				<li class="nav-item"><a href="${pageContext.request.contextPath}/mocar/Boardlist.mc"
					class="nav-link link-dark"> 공지사항 </a></li>
				<li class="nav-item"><a href="${pageContext.request.contextPath}/mocar/Boardlist_qna.mc"
					class="nav-link link-dark"> Q&amp;A </a></li>
				<li class="nav-item"><a href="/mocar/map.jsp"
					class="nav-link link-dark"> 찾아오시는 길 </a></li>
				<li class="nav-item"><a href="/mocar/contact.jsp"
					class="nav-link link-dark"> Contact</a></li>
			</ul>
			<hr>
			
			<!-- 로그인 버튼 -->
			<button type="button" class="btn" data-bs-toggle="modal"
				data-bs-target="#login" id="login_text">
				<p class="text-start fw-bold">login</p>
			</button>
			
			<!-- 마이페이지 버튼 -->
			<!-- <button type="button" class="btn" id="mypage_text" style="display:none;" onclick="location.href='/mocar/mypage.jsp'" > -->
			<button type="button" class="btn" id="mypage_text" style="display:none;" onclick="location.href='${pageContext.request.contextPath }/mocar/mypage.mc'" >
				<p class="text-start fw-bold" >Mypage</p>
			</button>
			
			<!-- 로그아웃 버튼 -->
			<button type="button" class="btn" id="logout_text"
				style="display: none;" onclick="location.href = 'logout.jsp'">
				<p class="text-start fw-bold">logout</p>
			</button>
			
			
			<!-- 로그인 -->
			<div class="modal" id="login" data-bs-backdrop="static"
				data-bs-keyboard="false" tabindex="-1"
				aria-labelledby="staticBackdropLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-header p-5 pb-4 border-bottom-0">
							<h2 class="fw-bold mb-0">login</h2>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body p-5 pt-0">
							<form name="loginForm" action="${pageContext.request.contextPath }/mocar/login.mc" method="post">
								<div class="form-floating mb-3">
									<input type="test" class="form-control rounded-4"
										id="floatingInput" placeholder="id" name="userid"> <label
										for="floatingInput">아이디</label>
								</div>
								<div class="form-floating mb-3">
									<input type="password" class="form-control rounded-4"
										id="floatingPassword" placeholder="Password" name="userpw"> <label
										for="floatingPassword">비밀번호</label>
								</div>
								<button type="button" class="w-100 mb-2 btn btn-lg btn-primary"
									onclick="login()">로그인</button>

									
								<div id="opt" class="row">
									<div class="opt_left col">
										<a href="#" data-bs-toggle="modal" data-bs-target="#resist">회원가입</a>
									</div>
									<div class="opt_right col text-end ">
										<a id="find1" class="d-inline-block " href="#"
											data-bs-toggle="modal" data-bs-target="#modalSignin">ID</a>
										<p class="d-inline-block">/</p>
										<a id="find2" class="d-inline-block" href="#"
											data-bs-toggle="modal" data-bs-target="#modalSignpw">PW찾기</a>
									</div>
								</div>
								<hr class="my-4">
								<h2 class="fs-5 fw-bold mb-3">다른 방법으로 로그인하기</h2>
								<button
									class="w-100 py-2 mb-2 btn btn-outline-success rounded-4"
									type="button" onclick="location.href='https://nid.naver.com/'">
									<img src=img/naver.png style="width: 20px; height: 20px;">
									네이버로 로그인하기
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- 회원가입 -->
			<div class="modal" id="resist" data-bs-backdrop="static"
				data-bs-keyboard="false" tabindex="-1"
				aria-labelledby="staticBackdropLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-header p-5 pb-4 border-bottom-0">
							<h2 class="fw-bold mb-0">회원가입</h2>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body p-5 pt-0">
							<form name="joinForm" action="${pageContext.request.contextPath }/mocar/index.mc" method="post">
								<div class="form-floating row"
									style='width: 100%; margin-left: 1px;'>
									<input type="text" class="form-control rounded-4 col"
										id="floatingInput" placeholder="name@example.com"
										name="userid"> <label for="floatingInput">아이디</label>
									<button type="button" class="btn btn-primary col-3"
										style='margin-left: 20px;' value="중복확인"
										onclick="checkId(joinForm.userid.value)">중복확인</button>
									<p id="text"></p>
								</div>
								<div class="form-floating mb-3">
									<input type="password" class="form-control rounded-4" 
										id="userPw" placeholder="Password" name="userpw">
									<label for="floatingPassword">비밀번호 (8자이상)</label>
								</div>
								<div class="form-floating mb-3">
									<input type="password" class="form-control rounded-4"
										id="userPw_ch" placeholder="Password" name="userpw_ch">
										<font id="chkNotice" size="2"></font>
									<label for="floatingPassword">비밀번호 확인</label>
								</div>
								<div class="form-floating mb-3">
									<input type="text" class="form-control rounded-4 "
										id="join_name" placeholder="name" name="username">
										<font id="chkName" size="2"></font>
									<label for="floatingInput">이름</label>
								</div>
								<div class="container px-1">
									<div class="row gx-5">
										<div class="col">
											<select class="form-select"
												aria-label="Default select example" name="year">
												<!-- 회원가입 날짜 선택  -->
												<option value="none">선택</option>
												<%
													for (int i = 2022; i > 1950; i--) {
												%>
												<option value="<%=i%>"><%=i%>년
												</option>
												<%
													}
												%>
											</select>
										</div>
										<div class="col">
											<select class="form-select text-end"
												aria-label="Default select example" name="month">
												<option value="none">선택</option>
												<%
													for (int i = 1; i < 13; i++) {
												%>
												<option value="<%=i%>"><%=i%>월
												</option>
												<%
													}
												%>
											</select>
										</div>
										<div class="col">
											<select class="form-select text-end"
												aria-label="Default select example" name="day">
												<option value="none">선택</option>
												<%
													for (int i = 1; i < 31; i++) {
												%>
												<option value="<%=i%>"><%=i%>일
												</option>
												<%
													}
												%>
											</select>
										</div>

									</div>
								</div>
								<div class="form-floating mb-3" style='margin-top: 13px;'>
									<input type="email" class="form-control rounded-4"
										id="email_ch" placeholder="email" name="usermail">
										<font id="chkEmail" size="2"></font>
									<label for="floatingemail">이메일</label>
								</div>
								<div class="form-floating mb-3 row"
									style='width: 100%; margin-left: 1px;'>
									<input type="text" class="form-control rounded-4 col"
										id="floatingInput" placeholder="abcd1234" name="usermember">
									<label for="floatingInput">추천인</label>
									<button type="button" class="btn btn-primary col-3"
										style='margin-left: 20px;'>확인</button>
								</div>
								<div class="form">
									<label class=""
										style='font-weight: 500; font-size: 18px; margin-bottom: 5px;'>약관
										동의</label>
									<div class="form-checkbox">
										<input class="form-check-input" type="checkbox" value=""
											id="chkTerm"> <label
											class="form-check-label" for="flexCheckDefault" > </label> <a
											class="fw-bold" href="#">이용약관</a>에 동의합니다.
									</div>
								</div>
								<div class="modal-footer border-0 p-0 mt-4">
									<button type="button" class="btn btn-primary" value="확인" id="join-btn"
										onclick="sendit()">가입</button>
									<button type="button" class="btn btn-warning"
										data-bs-dismiss="modal">취소</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- id찾기 -->
			<div class="modal" id="modalSignin" data-bs-backdrop="static"
				data-bs-keyboard="false" tabindex="-1"
				aria-labelledby="staticBackdropLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content rounded-5 shadow">
						<div class="modal-header p-5 pb-4 border-bottom-0">
							<h2 class="fw-bold mb-0">ID찾기</h2>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body p-5 pt-0">
							<form name="idForm" action="${pageContext.request.contextPath }/mocar/id.mc" method="post">
								<div class="form-floating mb-3">
									<input type="text" class="form-control rounded-4"
										id="floatingInput" placeholder="홍길동" name="username" > <label
										for="floatingInput">이름</label>
								</div>
								<div class="form-floating mb-3">
									<input type="email" class="form-control rounded-4"
										id="floatingInput" placeholder="name@example.com" name="usermail" > <label
										for="floatingInput">이메일</label>
								</div>
							
							<div class="text-end">
								<button type="button" class="btn btn-primary text-end" value="확인" onclick="loginid()">확인</button>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- pw찾기 -->
			<div class="modal" id="modalSignpw" data-bs-backdrop="static"
				data-bs-keyboard="false" tabindex="-1"
				aria-labelledby="staticBackdropLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content rounded-5 shadow">
						<div class="modal-header p-5 pb-4 border-bottom-0">
							<h2 class="fw-bold mb-0">PW찾기</h2>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body p-5 pt-0">
							<form name="pwForm" action="${pageContext.request.contextPath }/mocar/pw.mc" method="post">
								<div class="form-floating mb-3">
									<input type="text" class="form-control rounded-4"
										id="floatingInput" placeholder="홍길동" name="username" > <label
										for="floatingInput" >이름</label>
								</div>
								<div class="form-floating mb-3">
									<input type="text" class="form-control rounded-4"
										id="floatingInput" placeholder="abcd1234" name="userid"> <label
										for="floatingInput" >아이디</label>
								</div>
								<div class="form-floating mb-5">
									<input type="email" class="form-control rounded-4"
										id="floatingInput" placeholder="abcd1234" name="usermail"> <label
										for="floatingInput">이메일</label>
								</div>
								<!-- <div class="row g-2 mb-5">
									<div class="col-md">
										<div class="form-floating">
											<input type="password" class="form-control"
												id="floatingInputGrid" placeholder="password"> <label
												for="floatingInputGrid">변경할 비밀번호</label>
										</div>
									</div>
									<div class="col-md">
										<div class="form-floating">
											<input type="password" class="form-control"
												id="floatingInputGrid" placeholder="password"> <label
												for="floatingInputGrid">비밀번호 재입력</label>
										</div>
									</div>
								</div> -->

							<div class="text-end">
								<button type="button" class="btn btn-primary text-end" value="확인" onclick="loginpw()">확인</button>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>