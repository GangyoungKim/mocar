<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ include file="header.jsp"%>
	<c:set var="board" value="${requestScope.board }" />
	<c:set var="replylist" value="${requestScope.replylist }" />
	
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

			<!-- 공지사항테이블 -->
		<form action="${pageContext.request.contextPath}/mocar/BoardWriteOk.mc" method="post" name="boardForm">
		<table border="1" style="border-collapse: collapse;"
			class="table table-bordered border-dark">
			<tr height="30px">
				<th align="center" width="150px;" class=text-dark>제목</th>
				<td>
					<!-- 제목 data --> ${board.boardtitle } <span
					style="font-weight: bold; color: #6a1b9a; float: right;"> <!-- 조회수 data -->
						조회수 : ${board.boardreadcount }
				</span>
				</td>
			</tr>
			<tr height="30px">
				<th align="center" width="150px;" class=text-dark>글쓴이</th>
				<td>
					<!-- 글쓴이 data --> ${board.username }
				</td>
			</tr>
			<tr height="300px">
				<th align="center" width="150px;" class=text-dark>내용</th>
				<td valign="top" style="padding: 10px;">
					<!-- 내용 data --> ${board.boardcontent }
				</td>
			</tr>
		</table>

		<div class="text-end">
			<table style="border: 0px;">
				<tr align="right" valign="middle">
					<td>
					
					<!-- 목록 : boardlist.jsp --> 
					<a href="${pageContext.request.contextPath}/mocar/Boardlist.mc"
					class="btn btn-success">목록</a> 
					
					<a href="${pageContext.request.contextPath}/mocar/BoardModify.mc?boardnum=${board.boardnum }" class="btn btn-secondary" >수정</a>
					
									
					<a href="javascript:deleteboard(${board.boardnum })" class="btn btn-danger">삭제</a>
										
					<a href="${pageContext.request.contextPath}/mocar/BoardWrite.mc" class="btn btn-primary">글쓰기</a>
					
						
					</td>
					
				</tr>
			</table>
			</form>
			
		</div>

</main>		 
		
<script>

function boardModify(boardnum){
	document.boardForm.action = "${pageContext.request.contextPath}/mocar/BoardModify.mc?boardnum="+boardnum;
	document.boardForm.submit();			
}

/* function updateReadonlyReply( replynum ){
	document.getElementById('reply' + replynum).readOnly = false;
} */

function deleteboard(boardnum){
	
	document.boardForm.action = "${pageContext.request.contextPath}/mocar/DeleteBoard.mc?boardnum="+boardnum;
	document.boardForm.submit();
	
	
}
</script>	


<%@ include file="footer.jsp"%>














