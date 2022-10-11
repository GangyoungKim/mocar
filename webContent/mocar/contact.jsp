<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>
<main class="col-md-9 ms-sm-auto col-md-9 ms-sm-auto col-lg-10">
<div class="container col" style="margin-bottom: 300px;">
	<div class="grid text-center" style="margin-top: 200px;">
		<h1>
			<strong>CONTACT</strong>
		</h1>
	</div>
	<div class="grid text-center mb-5">
		<h4>궁금한 점이 있다면 Mo Car에게 문의하세요!</h4>
	</div>
	<div class="container row mx-auto">
		<form class="gform pure-form pure-form-stacked" method="POST" target="iframe1" data-email="nmjk0123@gmail.com"
			action="https://script.google.com/macros/s/AKfycbyqd5QHtr4QVl-ehFwYc4DNRdkXUGKZkFafE3f1te1qcondi5UecsHUMsxp6ixvsVGn/exec"
			onsubmit="return fromSubmit();">
			<div class="form-elements row">
				<fieldset class="pure-group col form-floating mb-3">
					<input id="name" class="form-control" name="name"
						placeholder="What your Mom calls you" />
					<label for="name" class="ms-1">Name: </label> 
				</fieldset>
				<fieldset class="pure-group col form-floating mb-3">
					<input
						id="email" class="form-control" name="email" type="email" value="" required
						placeholder="your.name@email.com" />
					<label for="email" class="ms-1">Email Address:</label> 
				</fieldset>
				<fieldset class="pure-group form-floating">
					<textarea id="message" class="form-control" name="message" rows="10" style="height: 200px"
						placeholder="Tell us what's on your mind..."></textarea>
					<label for="message" class="ms-1">Message: </label>
				</fieldset>
				<button class="mt-5 px-3 col-6 mx-auto button-success pure-button button-xlarge btn btn-outline-primary">
					<i class="fa fa-paper-plane"></i>문의하기
				</button>
			</div>
		</form>
		<iframe id="iframe1" name="iframe1" style="display:none"></iframe>
	</div>

</div>
</main>


<%@ include file="footer.jsp"%>