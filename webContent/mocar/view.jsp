<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="header.jsp"%>
<main class="ms-sm-auto col-md-9 col-lg-10">
<div class="container col" style="margin-bottom: 300px;">
	<div class="grid text-center" style="margin-top: 200px;">
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
						<th colspan="3"
							style="background-color: #eeeeee; text-align: center;">게시판 글
							보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%;">글 제목</td>
						<td colspan="2"></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2"></td>
					</tr>
					<tr>
						<td>작성일자</td>
						<td colspan="2"></td>
					</tr>
					<tr>
						<td>내용</td>

						<td colspan="2" style="min-height: 200px; text-align: left;"></td>
					</tr>
				</tbody>

			</table>

			<div class="btn-group" role="group" aria-label="Basic example">

				<button type="button" class="btn btn-primary">목록</button>
				<button type="button" class="btn btn-primary">수정</button>
				<button type="button" class="btn btn-primary">삭제</button>
			</div>



		</div>
	</div>
</main>
<%@ include file="footer.jsp"%>