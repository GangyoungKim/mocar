<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ include file="header.jsp"%>

	<c:set var="board" value="${requestScope.board }" />
	
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
		<form action="${pageContext.request.contextPath}/mocar/BoardModifyOk.mc" method="post" name="boardForm">
		<table border="1" style="border-collapse: collapse;"
			class="table table-bordered border-dark">
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
					<td><textarea name="boardcontent" style="width:700px;height:250px; resize:none;">${board.boardcontent}</textarea>  </td>
				</tr>
			</table>
		</form>

		<div class="text-end">
			<table class="w-100">
						<tr align="right" valign="middle">
							<td>
								<a href="javascript:boardModify(${board.boardnum } )" class="btn btn-secondary">수정</a>
							</td>
							
						</tr>
			</table>
		</div>

		
	</div>
	</main>
<script >
	function boardModify(boardnum){
		document.boardForm.action = "${pageContext.request.contextPath}/mocar/BoardModifyOk.mc?boardnum="+boardnum;
		document.boardForm.submit();
	}

</script>	


<%@ include file="footer.jsp"%>



















