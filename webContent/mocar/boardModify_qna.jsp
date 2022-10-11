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
	

		
		
	 <form action="${pageContext.request.contextPath}/mocar/BoardModifyOk_qna.mc" method="post" name="boardForm">
      <table class="table table-striped" style="border: 1px solid #dddddd">
			<tr height="30px">
				<th align="center" width="150px;">제목</th>
				<td>
				<input name="boardtitle" size="50" maxlength="100" placeholder="제목을 입력하세요." value =${board.boardtitle}>
				</td>
			</tr>
			<tr height="30px">
				<th align="center" width="150px;">글쓴이</th>
				<td>
					<input size="15" name="username" maxlength="20" placeholder="이름을 입력하세요." value =${board.username}>
				</td>
			</tr>
			<tr height="300px">
				<th align="center" width="150px;">내용</th>
				<td valign="top" style="padding: 10px;"> 
					<textarea name="boardcontent" style="width:700px;height:250px; resize:none;">${board.boardcontent}</textarea>
				</td>
			</tr>
		</table>
		</form>
		
		<table style="border: 0px;">
			<tr align="right" valign="middle">
				<td>
					
					<a href="javascript:boardModify_qna(${board.boardnum } )" class= "btn btn-secondary">수정</a>
					
				</td>
			</tr>
		</table>
		</div>
	</main>
<script >
	function boardModify_qna(boardnum){
		document.boardForm.action = "${pageContext.request.contextPath}/mocar/BoardModifyOk_qna.mc?boardnum="+boardnum;
		document.boardForm.submit();
	}

</script>	


<%@ include file="footer.jsp"%>

















