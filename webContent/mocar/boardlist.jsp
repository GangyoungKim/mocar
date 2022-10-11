<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ include file="header.jsp" %>

	<c:set var="boardList" value="${requestScope.boardList }"/>
	<c:set var="totalCnt" value="${requestScope.totalCnt }"/>
	
	<c:set var="nowPage" value="${requestScope.nowPage }"/>
	<c:set var="totalPage" value="${requestScope.totalPage }"/>
	<c:set var="startPage" value="${requestScope.startPage }"/>
	<c:set var="endPage" value="${requestScope.endPage }"/>
	
<main class="col-md-9 ms-sm-auto col-md-9 ms-sm-auto col-lg-10">	
	<div class="container col" style="margin-bottom: 300px;">
	<div class="grid text-center" style="margin-top: 200px;">
		<h1>
			<strong>공지사항</strong>
		</h1>
	</div>
	<div class="grid text-center mb-5">
		<h4>자동차가 필요한 순간 Mo Car와 함께 하세요!</h4>
	</div>
	
		  
		<table class="w-100">
<!-- 			<tr align="center" valign="middle">
				<td><h3>MVC게시판</h3> </td>
			</tr>                            -->  
			<tr align="right" valign="middle">
				<td>글 개수 : ${totalCnt }개</td>
			</tr>
		</table>
		
		<table class="container table table-hover" border="1" style="border-collapse: collapse; border-spacing: 0;" >
			<tr align="center" valign="middle">
				<th width="8%">번호</th>
				<th width="50%">제목</th>
				<th width="15%">작성자</th>
				<th width="17%">날짜</th>
				<th width="10%">조회수</th>
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
								<a href="${pageContext.request.contextPath}/mocar/BoardView.mc?boardnum=${board.boardnum }">
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
		<table>
			<tr align="right" valign="middle">
				<td><a href="${pageContext.request.contextPath}/mocar/Boardlist.mc" class="btn btn-success pull-right" >목록</a></td> 
				<td><a href="${pageContext.request.contextPath}/mocar/BoardWrite.mc" class="btn btn-primary pull-right" >글쓰기</a></td>
			</tr>
		</table>
		<!-- 페이징 처리 -->
		<table class="w-100">
			<tr align="center" valign="middle">
				<td>
				
					<c:if test="${nowPage > 1 }">
						<a href="${pageContext.request.contextPath}/mocar/Boardlist.mc?page=${nowPage-1}">[&lt;]</a>
					</c:if>
					
					<c:forEach var="i" begin="${startPage }" end="${endPage }">
						<c:choose>
							<%-- 현재 보고있는 페이지는 a tag 제거 --%>
							<c:when test="${i == nowPage }">[${i }]</c:when>
							<c:otherwise>
								<a href ="${pageContext.request.contextPath}/mocar/Boardlist.mc?page=${i}">[${i }]</a>							
							</c:otherwise>
						</c:choose>	
					</c:forEach>
					
					<c:if test="${nowPage < totalPage }">
						<a href="${pageContext.request.contextPath}/mocar/Boardlist.mc?page=${nowPage+1}">[&gt;]</a>
					</c:if>	
				</td>
			</tr>
		</table>
		
		
		
	</div>
	</main>
<script type="text/javascript">
function filter() {
	
	var value, name, item, i;
	
	value = document.getElementById("value").value.toUpperCase();
	item = document.getElementsByClassName("item");
	
	for( i = 0; i < item.length; i++ ) {
		name = item[i].getElementsByClassName("name");
		if( name[0].innerHTML.toUpperCase().indexOf(value) > -1 ) {
			item[i].style.display = "block";
		} else {
			item[i].style.display = "none";
		}
	}
}

</script>



<%@ include file="footer.jsp"%>
















