<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ include file="header.jsp"%>
	<c:set var="board" value="${requestScope.board }"/>
	
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
	

	<c:set var="replylist" value="${requestScope.replylist }"/>
		
		
	 <form action="${pageContext.request.contextPath}/mocar/BoardWriteOk_qna.mc" method="post" name="boardForm">
      <table class="table table-striped" style="border: 1px solid #dddddd">
			<tr height="30px">
				<th align="center" width="150px;">제목</th>
				<td>
					<!-- 제목 data -->
					${board.boardtitle }
					<span style="font-weight: bold; color:#6a1b9a;float: right;">
						<!-- 조회수 data -->
						조회수 : ${board.boardreadcount }
					</span>
				</td>
			</tr>
			<tr height="30px">
				<th align="center" width="150px;">글쓴이</th>
				<td>
					<!-- 글쓴이 data -->
					${board.username }
				</td>
			</tr>
			<tr height="300px">
				<th align="center" width="150px;">내용</th>
				<td valign="top" style="padding: 10px;"> 
					<!-- 내용 data -->
					${board.boardcontent }
				</td>
			</tr>
		</table>
		</form>
		
		<table style="border: 0px;">
			<tr align="right" valign="middle">
				<td>
					
					<a href="${pageContext.request.contextPath}/mocar/Boardlist_qna.mc" class="btn btn-success">목록</a>
					<a href="${pageContext.request.contextPath}/mocar/BoardModify_qna.mc?boardnum=${board.boardnum }" class= "btn btn-secondary">수정</a>
						<a href="javascript:deleteboard(${board.boardnum })" class= "btn btn-danger">삭제</a>
					
				</td>
			</tr>
		</table>
		</div>
	</main>
<script>

function boardModify(boardnum){
	document.boardForm.action = "${pageContext.request.contextPath}/mocar/BoardModify_qna.mc?boardnum="+boardnum;
	document.boardForm.submit();			
}

function deleteboard(boardnum){
	
	document.boardForm.action = "${pageContext.request.contextPath}/mocar/DeleteBoard_qna.mc?boardnum="+boardnum;
	document.boardForm.submit();
	
	
}
</script>	


<%@ include file="footer.jsp"%>

















