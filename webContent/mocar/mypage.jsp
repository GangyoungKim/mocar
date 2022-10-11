<%@page import="dao.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<main class="col-md-9 ms-sm-auto col-md-9 ms-sm-auto col-lg-10">
<div class="container col">
   <div class="grid text-center" style="margin-top: 200px;">
      <h1>
         <strong>MY PAGE</strong>
      </h1>
   </div>
   <div class="grid text-center mb-5">
      <h4>Mo Car 회원을 위한 다양한 혜택이 준비되어 있습니다.</h4>
   </div>
   <div class="container border bg-opacity-75 rounded">
      <div class="m-auto mt-5" style="width: 92%;">
         <h3>
            <!-- header <c:set var="login_name" value="${sessionScope.login_name }" /> 설정 -->
            <strong>${login_name}</strong>님의 회원정보   
         </h3>
         <hr class="opacity-100">
      </div>
      <div class="row pt-5 ">
      <!-- 회원정보 버튼  -->
         <!-- <div class="col-3 text-center">
            <svg xmlns="http://www.w3.org/2000/svg" width="100" height="100"
               color="white" fill="currentColor" class="bi bi-person"
               viewBox="0 0 16 16">
                 <path
                  d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z" />
            </svg>
            <p class="mt-2">
               <a href="#" class="text-decoration-none text-white"
                  data-bs-toggle="modal" data-bs-target="#data_title">회원정보</a>
            </p>
         </div> -->
         
         <!-- 쿠폰  버튼 -->
<!--          <div class="col-3 text-center">
            <svg xmlns="http://www.w3.org/2000/svg" width="100" height="100"
               color="white" fill="currentColor" class="bi bi-ticket-perforated"
               viewBox="0 0 16 16">
               <path
                  d="M4 4.85v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Zm-7 1.8v.9h1v-.9H4Zm7 0v.9h1v-.9h-1Z" />
               <path
                  d="M1.5 3A1.5 1.5 0 0 0 0 4.5V6a.5.5 0 0 0 .5.5 1.5 1.5 0 1 1 0 3 .5.5 0 0 0-.5.5v1.5A1.5 1.5 0 0 0 1.5 13h13a1.5 1.5 0 0 0 1.5-1.5V10a.5.5 0 0 0-.5-.5 1.5 1.5 0 0 1 0-3A.5.5 0 0 0 16 6V4.5A1.5 1.5 0 0 0 14.5 3h-13ZM1 4.5a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 .5.5v1.05a2.5 2.5 0 0 0 0 4.9v1.05a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-1.05a2.5 2.5 0 0 0 0-4.9V4.5Z" />
            </svg>
            <p class="mt-2">
               <a href="#" class="text-decoration-none text-white"
                  data-bs-toggle="modal" data-bs-target="#coupon">쿠폰확인</a>
            </p>
         </div>
         
         마일리지 버튼
         <div class="col-3 text-center">
            <svg xmlns="http://www.w3.org/2000/svg" width="100" height="100"
               color="white" fill="currentColor" class="bi bi-piggy-bank"
               viewBox="0 0 16 16">
               <path
                  d="M5 6.25a.75.75 0 1 1-1.5 0 .75.75 0 0 1 1.5 0zm1.138-1.496A6.613 6.613 0 0 1 7.964 4.5c.666 0 1.303.097 1.893.273a.5.5 0 0 0 .286-.958A7.602 7.602 0 0 0 7.964 3.5c-.734 0-1.441.103-2.102.292a.5.5 0 1 0 .276.962z" />
               <path fill-rule="evenodd"
                  d="M7.964 1.527c-2.977 0-5.571 1.704-6.32 4.125h-.55A1 1 0 0 0 .11 6.824l.254 1.46a1.5 1.5 0 0 0 1.478 1.243h.263c.3.513.688.978 1.145 1.382l-.729 2.477a.5.5 0 0 0 .48.641h2a.5.5 0 0 0 .471-.332l.482-1.351c.635.173 1.31.267 2.011.267.707 0 1.388-.095 2.028-.272l.543 1.372a.5.5 0 0 0 .465.316h2a.5.5 0 0 0 .478-.645l-.761-2.506C13.81 9.895 14.5 8.559 14.5 7.069c0-.145-.007-.29-.02-.431.261-.11.508-.266.705-.444.315.306.815.306.815-.417 0 .223-.5.223-.461-.026a.95.95 0 0 0 .09-.255.7.7 0 0 0-.202-.645.58.58 0 0 0-.707-.098.735.735 0 0 0-.375.562c-.024.243.082.48.32.654a2.112 2.112 0 0 1-.259.153c-.534-2.664-3.284-4.595-6.442-4.595zM2.516 6.26c.455-2.066 2.667-3.733 5.448-3.733 3.146 0 5.536 2.114 5.536 4.542 0 1.254-.624 2.41-1.67 3.248a.5.5 0 0 0-.165.535l.66 2.175h-.985l-.59-1.487a.5.5 0 0 0-.629-.288c-.661.23-1.39.359-2.157.359a6.558 6.558 0 0 1-2.157-.359.5.5 0 0 0-.635.304l-.525 1.471h-.979l.633-2.15a.5.5 0 0 0-.17-.534 4.649 4.649 0 0 1-1.284-1.541.5.5 0 0 0-.446-.275h-.56a.5.5 0 0 1-.492-.414l-.254-1.46h.933a.5.5 0 0 0 .488-.393zm12.621-.857a.565.565 0 0 1-.098.21.704.704 0 0 1-.044-.025c-.146-.09-.157-.175-.152-.223a.236.236 0 0 1 .117-.173c.049-.027.08-.021.113.012a.202.202 0 0 1 .064.199z" />
            </svg>
            <p class="mt-2">
               <a href="#" class="text-decoration-none text-white" data-bs-toggle="modal" data-bs-target="#mileage">마일리지</a>
            </p>
         </div>
         
         예약현황  버튼
         <div class="col-3 text-center">
            <svg xmlns="http://www.w3.org/2000/svg" width="100" height="100"
               color="white" fill="currentColor" class="bi bi-postcard"
               viewBox="0 0 16 16">
               <path fill-rule="evenodd"
                  d="M2 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H2ZM1 4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V4Zm7.5.5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7ZM2 5.5a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5Zm0 2a.5.5 0 0 1 .5-.5H6a.5.5 0 0 1 0 1H2.5a.5.5 0 0 1-.5-.5ZM10.5 5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3ZM13 8h-2V6h2v2Z" />
            </svg>
            <p class="mt-2">
               <a href="#" class="text-decoration-none text-white" data-bs-toggle="modal" data-bs-target="#reserve">예약현황</a>
            </p>
         </div>
      </div> -->

      <!-- 회원정보 -->
            <div class="content">
               <div class="p-5 pt-0">
                  <form name="infoForm" action="${pageContext.request.contextPath }/mocar/mypage_member.mc" method="post">
                     <div class="form-floating mb-3">
                        <input type="password" class="form-control rounded-4"
                           id="floatingPassword" placeholder="password" disabled>
                        <label for="floatingPassword">${user_info.userid }</label>
                     </div>
                     <div class="form-floating mb-3 row"
                        style='width: 100%; margin-left: 1px;'>
                        <input type="password" class="form-control rounded-4 col"
                           id="change_pw" name = "change_pw" placeholder="Password" >
                        <label for="floatingPassword">비밀번호</label>
                        <button type="button" id="click_pw"class="btn btn-primary col-3"
                           style='margin-left: 20px;' onclick="curpw(infoForm.change_pw.value)">변경</button>
                     </div>

                     <div class="form-floating mb-3">
                        <input type="password" class="form-control rounded-4"
                           name="new_pw" id="new_pw" placeholder="Password" style="display:none;"> <label
                           for="floatingPassword">비밀번호 변경</label>
                     </div>
                     <div class="form-floating mb-3">
                        <input type="text" class="form-control rounded-4"
                           id="floatingInput" placeholder="name" disabled> <label
                           for="floatingInput">${user_info.username }</label>
                     </div>

                     <div class="form-floating mb-3" style='margin-top: 13px;'>
                        <input type="email" class="form-control rounded-4"
                           id="floatingemail" placeholder="email" disabled> <label
                           for="floatingemail">${user_info.usermail }</label>
                     </div>
                     

                     <div class="border-0 p-0 mt-4">
                        <button type="button" class="btn btn-primary" onclick="changepw()">확인</button>
                        <button type="button" class="btn btn-warning" onclick="location.href='/mocar/index.jsp'">취소</button>
                     </div>
                  </form>
               </div>
            </div>

      <!-- 쿠폰  -->
      <div class="modal" id="coupon" data-bs-backdrop="static"
         data-bs-keyboard="false" tabindex="-1"
         aria-labelledby="staticBackdropLabel" aria-hidden="true">
         <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
               <div class="modal-header p-5 pb-4 border-bottom-0">
                  <h2 class="fw-bold mb-0">쿠폰</h2>
                  <button type="button" class="btn-close" data-bs-dismiss="modal"
                     aria-label="Close"></button>
               </div>
               <div class="modal-body p-5 pt-0">
                  <table class="table table-hover">
                     <thead>
                        <tr>
                           <th scope="col">일련번호</th>
                           <th scope="col">혜택</th>
                           <th scope="col">사용기한</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <td>${coupon.couponnum }</td>
                           <td>${coupon.coupontitle }</td>
                           <td>${coupon.couponday }</td>
                        </tr>
                     </tbody>
                  </table>
                  <div class="text-end">
                     <button type="button" class="btn btn-primary text-end"
                        data-bs-toggle="modal" data-bs-target="#coupon_detail">쿠폰등록</button>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- 쿠폰 상세 -->
      <div class="modal" id="coupon_detail" data-bs-backdrop="static"
         data-bs-keyboard="false" tabindex="-1"
         aria-labelledby="staticBackdropLabel" aria-hidden="true">
         <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
               <div class="modal-header p-5 pb-4 border-bottom-0">
                  <h2 class="fw-bold mb-0">쿠폰</h2>
                  <button type="button" class="btn-close" data-bs-dismiss="modal"
                     aria-label="Close"></button>
               </div>
               <div class="modal-body p-5 pt-0">
                  <form name="cpForm" action="${pageContext.request.contextPath }/mocar/mypage_coupon.mc" method="post">
                     <div class="form-floating mb-3 row"
                        style='width: 100%; margin-left: 1px;'>
                        <input type="text" class="form-control rounded-4 col"
                           id="floatingInput" placeholder="" name="couponnum"> <label
                           for="floatingInput">일련번호를 입력하세요</label>
                        <button type="button" class="btn btn-primary col-2"
                           style='margin-left: 20px;'onclick="couponok()">확인</button>
                     </div>
                     <p class="text-black-50 mt-5">
                        * 쿠폰 등록후 기간, 혜택 등을 꼭 확인하세요.<br> * 쿠폰 번호 등록 시, 하이폰 (-)은 안
                        넣으셔도 됩니다.<br> * 알파벳 O와 숫자 0을 명확히 구분하여 입력하세요.
                     </p>
                  </form>
               </div>
            </div>
         </div>
      </div>
      <!-- 마일리지 -->
      <div class="modal" id="mileage" data-bs-backdrop="static"
         data-bs-keyboard="false" tabindex="-1"
         aria-labelledby="staticBackdropLabel" aria-hidden="true">
         <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
               <div class="modal-header p-5 pb-4 border-bottom-0">
                  <h2 class="fw-bold mb-0">마일리지 내역</h2>
                  <button type="button" class="btn-close" data-bs-dismiss="modal"
                     aria-label="Close"></button>
               </div>
               <div class="M_mileage_info bg-secondary bg-opacity-25">
                  <div class="M_mileage_name float-start ms-2">
                     <p class="mb-0">
                        <strong>&#34;${login_name}&#34;</strong>님 마일리지
                     </p>
                  </div>
                  <div class="M_mileage_point text-end me-2">
                     <p class="mb-0">
                        <strong>&#34;0&#34;</strong>점
                     </p>
                  </div>
               </div>
               <!-- <div class="btn-toolbar col px-5 my-3" role="toolbar"
                  aria-label="Toolbar with button groups">
                  <div class="btn-group me-2 col" role="group"
                     aria-label="First group">
                     <button type="button" class="btn btn-outline-primary">1주일</button>
                  </div>
                  <div class="btn-group me-2 col" role="group"
                     aria-label="Second group">
                     <button type="button" class="btn btn-outline-primary">1개월</button>
                  </div>
                  <div class="btn-group col" role="group" aria-label="Third group">
                     <button type="button" class="btn btn-outline-primary">3개월</button>
                  </div>
               </div> -->
               <div class="modal-body p-5 pt-0">
                  <table class="table table-hover">
                     <thead>
                        <tr>
                           <th scope="col-md-3">날짜</th>
                           <!-- <th scope="col">일련번호</th> -->
                           <th scope="col-md-3">내역</th>
                           <th scope="col-md-3">적립</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <td></td>
                           <td></td>
                           <td></td>
                        </tr>
                     </tbody>
                  </table>
               </div>
            </div>
         </div>
      </div>
      <!-- 예약현황 -->
      <div class="modal" id="reserve" data-bs-backdrop="static"
         data-bs-keyboard="false" tabindex="-1"
         aria-labelledby="staticBackdropLabel" aria-hidden="true">
         <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
               <div class="modal-header p-5 pb-4 border-bottom-0">
                  <h2 class="fw-bold mb-0">예약 현황</h2>
                  <button type="button" class="btn-close" data-bs-dismiss="modal"
                     aria-label="Close"></button>
               </div>
               <div class="modal-body p-5 pt-0">
                  <table class="table table-hover">
                     <thead>
                        <tr>
                           <th scope="col">예약자</th>
                           <th scope="col">차 종류</th>
                           <th scope="col">예약 기간</th>
                           <th scope="col">금액</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <td>${login_name}</td>
                           <td></td>
                           <td></td>
                           <td></td>
                        </tr>
                     </tbody>
                  </table>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<form name="deleteForm" method="post" action="${pageContext.request.contextPath }/mocar/deleteId.mc">
	<div class="modal" id="removeId" data-bs-backdrop="static"
         data-bs-keyboard="false" tabindex="-1"
         aria-labelledby="staticBackdropLabel" aria-hidden="true">
         <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content rounded-4 shadow">
               <div class="modal-header px-4 pb-0 border-bottom-0">
                  <button type="button" class="btn-close" data-bs-dismiss="modal"
                     aria-label="Close"></button>
               </div>
               <div class="modal-body px-4 text-center">
               		<h5>비밀번호를 입력하세요.</h5>
               		<div id="pwInput_box" class="input-group flex-nowrap">
  						<input id="pwInput" name="pwInput" type="password" class="form-control" aria-describedby="addon-wrapping">
					</div>
               </div>
               <div class="modal-footer flex-nowrap p-0">
        		<button type="button" class="btn btn-lg btn-link fs-6 text-decoration-none col-12 m-0 rounded-0 border-right" onclick="chkRemove(deleteForm.pwInput.value)"><strong>확인</strong></button>
      		   </div>
            </div>
         </div>
      </div>
<!-- <div class="modal modal-alert position-static d-block py-5" id="removeId" data-bs-backdrop="static"
         data-bs-keyboard="false" tabindex="-1"
         aria-labelledby="staticBackdropLabel" aria-hidden="true">
  
  <div id="deleteId_box" class="modal-dialog" role="document">
    <div class="modal-content rounded-4 shadow">
      <div class="modal-body p-4 text-center">
        <h5>비밀번호를 입력하세요.</h5>
        <div id="pwInput_box" class="input-group flex-nowrap">
  <input id="pwInput" name="pwInput" type="password" class="form-control" aria-describedby="addon-wrapping">
</div>
      </div>
      <div class="modal-footer flex-nowrap p-0">
        <button type="button" class="btn btn-lg btn-link fs-6 text-decoration-none col-12 m-0 rounded-0 border-right" onclick="chkRemove(deleteForm.pwInput.value)"><strong>확인</strong></button>
      </div>
    </div>
  </div>
</div> -->
<div class="d-grid gap-2 d-md-flex justify-content-md-end me-5 mt-4" style="margin-bottom: 300px;">
   <button type="button" class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#removeId" onclick="removeId()">회원탈퇴</button>
</div>
</form>
</main>


<%@ include file="footer.jsp"%>