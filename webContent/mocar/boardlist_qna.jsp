<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ include file="header.jsp"%>
<main class="ms-sm-auto col-md-9 col-lg-10">
<div class="container col" style="margin-bottom:300px;">
	<div class="grid text-center" style="margin-top:200px;">
		<h1>
			<strong>Q&amp;A</strong>
		</h1>
	</div>
	<div class="grid text-center mb-5">
		<h4>Mo Car에게 궁금한 것을 물어보세요!</h4>
	</div>
<div class="container">

	<c:set var="boardList" value="${requestScope.boardList }"/>
	<c:set var="totalCnt" value="${requestScope.totalCnt }"/>
	
	<c:set var="nowPage" value="${requestScope.nowPage }"/>
	<c:set var="totalPage" value="${requestScope.totalPage }"/>
	<c:set var="startPage" value="${requestScope.startPage }"/>
	<c:set var="endPage" value="${requestScope.endPage }"/>
	
	<div>
		<table class="w-100">
			<tr align="center" valign="middle">

			</tr>
			<tr align="right" valign="middle">
				<td>글 개수 : ${totalCnt }개</td>
			</tr>
		</table>
		
		<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				
				<th style="background-color: #eeeeee; text-align: center;">번호</th>
				<th style="background-color: #eeeeee; text-align: center;">제목</th>
				<th style="background-color: #eeeeee; text-align: center;">작성자</th>
				<th style="background-color: #eeeeee; text-align: center;">날짜</th>
				<th style="background-color: #eeeeee; text-align: center;">조회수</th>
			</tr>
			<c:choose>
				<c:when test="${boardList != null and fn:length(boardList) > 0 }">
					<!-- 게시글 작성 : 글이 있는 경우 -->
					<c:forEach var="board" items="${boardList }">
						<tr align="center" valign="middle"
							onmouseover="this.style.background='#bbdefb'" 
							onmouseout="this.style.background=''" >
							<td height="23px;"> ${board.boardnum } </td>
							<td height="23px;"> 
								<a href="${pageContext.request.contextPath}/mocar/BoardView_qna.mc?boardnum=${board.boardnum }">
									${board.boardtitle }
								</a> 
							</td>
							<td height="23px;"> ${board.username } </td>
							<td height="23px;"> ${board.boarddate } </td>
							<td height="23px;"> ${board.boardreadcount } </td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<!-- 게시글 작성 : 글이 없는 경우 -->
					<tr style="height: 50px">
						<td colspan="5" style="text-align: center;">등록된 게시물이 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</table>
		<br>
		<!-- 페이징 처리 -->
		<table class="w-100">
			<tr align="center" valign="middle">
				<td>
					<c:if test="${nowPage > 1 }">
						<a href="${pageContext.request.contextPath}/mocar/Boardlist_qna.mc?page=${nowPage-1}">[&lt;]</a>
					</c:if>
					
					<c:forEach var="i" begin="${startPage }" end="${endPage }">
						<c:choose>
							<%-- 현재 보고있는 페이지는 a tag 제거 --%>
							<c:when test="${i == nowPage }">[${i }]</c:when>
							<c:otherwise>
								<a href="${pageContext.request.contextPath}/mocar/Boardlist_qna.mc?page=${i}">[${i }]</a>							
							</c:otherwise>
						</c:choose>	
					</c:forEach>
					
					<c:if test="${nowPage < totalPage }">
						<a href="${pageContext.request.contextPath}/mocar/Boardlist_qna.mc?page=${nowPage+1}">[&gt;]</a>
					</c:if>	
				</td>
			</tr>
		</table>
		
		
		<a class="btn btn=success" ></a>
				<td><a href="${pageContext.request.contextPath}/mocar/BoardWrite_qna.mc"class="btn btn-primary w-100">글쓰기</a></td>
			</tr>
		
	</div>
</main>
<%@ include file="footer.jsp"%>


















