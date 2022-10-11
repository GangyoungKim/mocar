<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp" %>

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

	<div>
		<form action="${pageContext.request.contextPath}/mocar/BoardWriteOk.mc" method="post" name="boardForm">
			<table style="width: 900px;border: 0px;">
				<tr align="center" valign="middle">
					<!-- <td><h3>공지사항 게시판</h3></td> -->
				</tr>
			</table>
			
			<table border="1" style="border-collapse: collapse;"
			class="table table-bordered border-dark">
				<tr height="30px">
					<th align="center" width="150px;">제목</th>
					<td>
						<input name="boardtitle" size="50" maxlength="100" placeholder="제목을 입력하세요.">
					</td>
				</tr>
				<tr height="30px">
					<th align="center" width="150px;">글쓴이</th>
					<td>
						<input size="15" name="username" maxlength="20" placeholder="이름을 입력하세요.">
					</td>
				</tr>
				<tr height="300px">
					<th align="center" width="150px;">내용</th>
					<td><textarea name="boardcontent" style="width:700px;height:250px;resize:none;"></textarea>  </td>
				</tr>
			</table>
			
			<table style="border: 0px;">
				<tr align="right" valign="middle">
					<td>
						<a href="javascript:document.boardForm.submit()" class="btn btn-primary ">등록</a>&nbsp;&nbsp;&nbsp;
						<a href ="${pageContext.request.contextPath}/mocar/Boardlist.mc" class="btn btn-success" >목록</a>
					</td>
				</tr>
			</table>
		</form>
	</div>
</div>	
</main>
<%@ include file="footer.jsp"%>

















