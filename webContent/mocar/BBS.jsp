<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>안녕하세요</td>
						<td>조민우</td>
						<td>2022-06-07</td>
	
					</tr>
				</tbody>
			</table>
			<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
	
			<a class="btn btn=success btn-arraw-left"></a> <a href="write.jsp"
				class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
</div>
</main>
<%@ include file="footer.jsp"%>