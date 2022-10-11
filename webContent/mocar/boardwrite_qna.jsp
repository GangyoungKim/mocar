<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



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

	<div>
		<form action="${pageContext.request.contextPath}/mocar/BoardWriteOk_qna.mc" method="post" name="boardForm">
			
		
			
			<table class="table table-striped" style="border: 1px solid #dddddd"">
				<tr height="30px">
					<th align="center" width="150px;">제목</th>
					<td>
						<input name="boardtitle" size="50" maxlength="100" placeholder="제목을 입력하세요">
					</td>
				</tr>
				<tr height="30px">
					<th align="center" width="150px;">글쓴이</th>
					<td>
						<input size="10" name="username" maxlength="20" placeholder="이름을 입력하세요">
					</td>
				</tr>
				<tr height="300px">
					<th align="center" width="150px;">내용</th>
					<td><textarea name="boardcontent" style="width:700px;height:250px;"></textarea>  </td>
				</tr>
			</table>
			
			<table style="border: 0px;">
				<tr align="right" valign="middle">
					<td>
						<a href="javascript:document.boardForm.submit()" class="btn btn-primary">등록</a>
						<a href="${pageContext.request.contextPath}/mocar/Boardlist_qna.mc" class="btn btn-success" >목록</a>
					</td>
				</tr>
			</table>
		</form>
	</div>
	
</main>
<%@ include file="footer.jsp"%>
















