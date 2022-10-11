<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<meta charset="UTF-8">

<!-- header -->
<%@ include file="header.jsp" %>
<link rel="stylesheet" href="/mocar/css/style2.css">

<!-- datapicker 적용 -->
<!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script> -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<!-- datapicker 적용 -->
<% 

	if(test1 == null){										
	%>
	<script>
	function chk_login(){
		alert("로그인을 해주세요.")
	}
	</script>
	<%	}%>
<!-- 변수 선언 -->
<c:set var="carinfo" value="${requestScope.carinfoList }" />

<!-- 차량정보 및 렌트 -->
<div class="col" style="margin-bottom: 300px;">
	<section class="text-center container">
		<div class="row">
			<div class="col-lg-6 col-md-8 mx-auto" style="margin-top: 200px;">
		            <h4>날짜를 선택 후 예약하기 버튼을 눌러주세요</h4> 
		            
		            <!-- 특정 차량 번호 가져오기 시작 -->
			<svg class="bd-placeholder-img card-img-top" width="100%" height="225" style="padding:10px; margin-bottom: 10px; border-bottom: 1px solid #55595c; xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
		            <title>${carinfo.carname }</title><image href="${pageContext.request.contextPath}/mocar/img/car/${carinfo.carphoto}" height="100%" width="100%"/>
		            <text x="50%" y="50%" fill="#eceeef" dy=".3em"></text></svg>
		            <div class="position-relative" style="border-bottom: 1px solid #55595c;">
		            	<div>
			            	<p class="text-start fw-bold fs-5" style="margin-bottom:0;">${carinfo.carname }</p>
			            	<p class="text-start fw-normal fs-6" style="margin-bottom:0;">${carinfo.carname_sub }</p>
			            	<p class="text-start fw-normal fs-6" >${carinfo.caryear }</p>
			            </div>
			            <div class="position-absolute top-0 end-0 ">
			            	<p class=" fw-bold fs-3" style="margin-bottom:0;">${carinfo.carprice }원 / 일</p>
			            </div>
		            </div>
		            <!-- 특정 차량 번호 가져오기 끝 -->
		            
		            <!-- 렌트 절차 안내 시작 -->
		            <div style="padding:10px; padding-left: 0; border-bottom: 1px solid #55595c;">
		            	<p class="text-start fw-bold fs-5" style="margin-bottom:10px;">렌트 절차</p>
		            	<p class="text-start fw-normal fs-6" >1. 렌트를 신청하시면, 선택하신 자동차의 상세한 사진을 직접 촬영하여 보내드립니다.</p>
		            	<p class="text-start fw-normal fs-6" >2. 사진을 보고 렌트 여부를 결정해 주세요.</p>
		            	<p class="text-start fw-normal fs-6" >3. 렌트를 결정하셨다면, 직접 차량 픽업 혹은 운송 중 선택하시게 됩니다.</p>
		            	<p class="text-start fw-normal fs-6" >4. 렌트 비용과 보험료도 함께 결제해주세요. (3)에서 운송 선택 시 운송비와 보증금이 결제됩니다. (보증금은 렌트 종료 후 환급됩니다.)</p>
		            	<p class="text-start fw-normal fs-6" >5. 차량을 받으시면 운행 전 사진을 꼭 찍어주세요.</p>
		            	<p class="text-start fw-normal fs-6" >6. 렌트 기간이 끝나면 정해진 장소에 반납하시면 됩니다.</p>
		            </div>
		            <div style="padding:10px;">
		            <!-- 렌트 절차 안내 끝 -->
 					
 					<!-- 날짜 및 차량정보 submit 시작 -->
						<div> 
				            <form action="${pageContext.request.contextPath}/mocar/CarRent.mc" name="carrentForm" method="post">
				            	<input type="hidden" name="carnum" value="${carinfo.carnum }">
				       	 		<input type="text" id="demo" class="my-4 text-secondary" name="rentday" value="" />
				            	<a id="reserve_btn" class="ls-modal btn btn-sm btn-outline-secondary" href="javascript:document.carrentForm.submit()" onclick="chk_login()">예약하기</a> 
				            </form>
				        </div>
				    <!-- 날짜 및 차량정보 submit 끝 -->        <!-- 예약하기 버튼 클릭 시 성공시 예약 상세페이지 이동 필요 -->
		            </div>
		            
			</div>
		</div>
	</section>
</div>

<!-- footer -->
<%@ include file="footer.jsp" %>

<script>

// 달력 function
$(function () {
    $('#demo').daterangepicker({
        "locale": {
            "format": "YYYY-MM-DD",
            "separator": "~",
            "applyLabel": "확인",
            "cancelLabel": "취소",
            "fromLabel": "From",
            "toLabel": "To",
            "customRangeLabel": "Custom",
            "weekLabel": "W",
            "daysOfWeek": ["월", "화", "수", "목", "금", "토", "일"],
            "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
            "firstDay": 1
        },
        timePicker: true,
        timePicker24Hour: true,
        "drops": "down"
    }, function (start, end, label) {
        console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
    });
});


</script>











