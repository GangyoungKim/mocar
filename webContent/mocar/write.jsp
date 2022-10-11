<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="header.jsp" %>
<head>
	<style>
		section {
			text-align:center;
			line-height:5px;
			background-color:white;
			color:black;
			width:100%;
			height:100%;
			float:left;
			
	</style>
<meta charset="UTF-8">
<meta name="viweport" content="width=device-width",initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">

<title>JSP Write</title>
</head>
<body>


	<section class="sub-con">
    
		<h2 class="sub-Title">Q&amp;A</h2>
		<div style="padding:5px;"> </div>
					<p class="sTxt">자동차가 필요한 순간 모카와 함께 하세요!</p>
					</section>
					<div style="padding:20px;"> </div>

 <div class="container">
 	<div class="row">
 	<form method="post" action="writeAction.jsp">
 	<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
 			<thead>
 			 <tr>
 				<th colspan="2" style="background-color: #eeeeee; text-align: center;">게시판 글쓰기 양식</th>
 				
 			 </tr>
 			</thead>
 			<tbody>
 				<tr>
 						<td><input type="text" class="form-control" placeholder="글제목" name="bbsTitle" maxlength="50"></td>
 					</tr>
 					<tr>
 						<td><textarea class="form-control" placeholder="글내용" name="bbsContent" maxlength="2048" style="height:350px;"></textarea></td>
 					</tr>	
 			</tbody>			
 			</table>
 			<input type="submit" class="btn btn-primary pull-right" value="확인">
 	</form>
 		
 			
 	</div>
 </div>
</body>
</html>