
// 회원가입 폼 validation check
function sendit() {
	let frm = document.joinForm;
	let userid = frm.userid;
	let userpw = frm.userpw;
	let username = frm.username;
	let year = frm.year;
	let month = frm.month;
	let day = frm.day;
	let usermail = frm.usermail;
	let chk_term = frm.chkTerm.checked;


	// 아이디 "" 처리
	if (userid.value == "") {
		alert("아이디를 입력해주세요!");
		userid.focus();
		return false;
	}

	// 아이디 5자리 이상, 16자리 미만
	if (userid.value.length <= 4 || userid.value.length >= 16) {
		alert("아이디는 5자 이상, 16자 미만으로 입력하세요!");
		userid.focus();
		return false;
	}
	
	// 비밀번호 "" 처리
	 if( userpw.value == "" ){
		 alert("비밀번호를 입력해주세요!");
		 userpw.focus();
		 return false;
		 
	 }
	
	
	// 이름 "" 처리
	 if(username.value == "") {
		 alert("이름을 입력해주세요!");
		 username.focus();
		 return false;
	 }
	 
	// 년도 "" 처리
	 if(year.value == "none") {
		 alert("년도를 선택하세요!");
		 year.focus();
		 return false;
	 }
	 
	 
	// 월 "" 처리
	 if(month.value == "none") {
		 alert("월을 선택하세요!");
		 month.focus();
		 return false;
	 }
	 
	 
	// 일 "" 처리
	 if(day.value == "none") {
		 alert("일을 선택하세요!");
		 day.focus();
		 return false;
	 }
	 
	// 일 "" 처리
	 if(usermail.value == "") {
		 alert("이메일을 입력해주세요!");
		 usermail.focus();
		 return false;
	 }
	 
	 
	// 비밀번호, 비밀번호 확인이 같은지 체크
	// if( userpw.value != userpw_ch.value ){
	// document.getElementById("chkNotice").innerHTML
	// = "<p>비밀번호가 일치하지 않습니다.</p>";
	// return false;
	// }else{
	// document.getElementById("chkNotice").innerHTML
	// = "<p style='color:red; margin-bottom:0;'>비밀번호가 일치합니다.</p>";
	// return false;
	//	
	// }
	 
	// loginid "" 처리
	
	// loginpw "" 처리
	if( loginpw.value == "" ){
		alert("비밀번호를 입력하세요!");
		loginpw.focus();
		return false;
	}
	
	if(!chk_term){
		 alert("약관에 동의해주세요.");
		 chk_term.focus();
		 return false;
	 }
	
	frm.submit();

}


function checkId(userid) {
	if (userid == "") {
		alert("아이디를 입력해주세요!");
		return false;
	} else {
		// ajax 통신
		let xhr = new XMLHttpRequest();
		xhr.open("GET", "idcheck.jsp?userid=" + userid, true);
		xhr.send();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
				// alert(xhr.responseText);

				if (xhr.responseText.trim() == "ok") {
					// 사용할수 있는 아이디 입니다.
					document.getElementById("text").innerHTML = "<p style='color:blue; margin-bottom:0;'>사용할수 있는 아이디 입니다.</p>";
				} else {
					// 중복된 아이디 입니다.
					document.getElementById("text").innerHTML = "<p style='color:red; margin-bottom:0;'>중복된 아이디 입니다.";
				}
			}
		}

	}
}
// 비밀번호 확인
$(function() {
	$('#userPw').keyup(function() {
		$('#chkNotice').html('');
	});

	$('#userPw_ch').keyup(function() {
		if ($('#userPw').val() != $('#userPw_ch').val()) {
			$('#chkNotice').html('비밀번호가 일치하지 않습니다.<br><br>');
			$('#chkNotice').attr('color', '#f82a2aa3');
			$('#join-btn').attr("disabled", "disabled");
		} else {
			$('#chkNotice').html('비밀번호가 일치합니다.<br><br>');
			$('#chkNotice').attr('color', '#199894b3');
			$('#join-btn').removeAttr("disabled");
		}
		if ($('#userPw').val().length < 8) {
			$('#chkNotice').html('비밀번호는 8자리 이상으로 입력해주세요<br><br>');
			$('#chkNotice').attr('color', '#f82a2aa3');
			$('#join-btn').attr("disabled", "disabled");

		}
	});
});

// 이메일 형식 체크
function email_check(email) {
	var regex = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	return (email != '' && email != 'undefined' && regex.test(email));
}

$("input[type=email]").blur(function() {
	var email = $(this).val();
	if (email == '' || email == 'undefined')
		return;
	if (!email_check(email)) {
		$("#chkEmail").text('이메일 형식으로 적어주세요');
		$('#chkEmail').attr('color', '#f82a2aa3');
		$('#join-btn').attr("disabled", "disabled");
		$(this).focus();
		return false;
	} else {
		$("#chkEmail").text('');
		$("#join-btn").removeAttr("disabled");
	}
});



function login() {
	let frm = document.loginForm;
	let userid = frm.userid;
	let userpw = frm.userpw;

	// 아이디 "" 처리
	if (userid.value == "") {
		alert("아이디를 입력해주세요!");
		userid.focus();
		return false;
	}

	// 비밀번호 "" 처리
	 if( userpw.value == "" ){
		 alert("비밀번호를 입력해주세요!");
		 userpw.focus();
		 return false;
		 
	 }
	

	frm.submit();

}


function loginid() {
	let frm = document.idForm;
	let username = frm.username;
	let usermail = frm.usermail;
	
	// 이름 "" 처리
	if (username.value == "") {
		alert("이름을 입력해주세요!");
		username.focus();
		return false;
	}

	// 이메일 "" 처리
	 if( usermail.value == "" ){
		 alert("이메일을 입력해주세요!");
		 usermail.focus();
		 return false;
		 
	 }
	

	frm.submit();

}

function loginpw() {
	let frm = document.pwForm;
	let username = frm.username;
	let userid = frm.userid;
	let usermail = frm.usermail;
	
	// 이름 "" 처리
	if (username.value == "") {
		alert("이름을 입력해주세요!");
		username.focus();
		return false;
	}
	
	// 아이디 "" 처리
	if (userid.value == "") {
		alert("아이디을 입력해주세요!");
		userid.focus();
		return false;
	}
	
	

	// 이메일 "" 처리
	 if( usermail.value == "" ){
		 alert("이메일을 입력해주세요!");
		 usermail.focus();
		 return false;
		 
	 }
	

	frm.submit();

}


function couponok(){
	let frm = document.cpForm;
	alert('쿠폰이 등록되었습니다.');
	
	frm.submit();
}

//현재 비밀번호 확인
function curpw(userpw) {
	if (userpw == "") {
		alert("비밀번호를 입력해주세요.");
		return false;
	} else {
		// ajax 통신
		let xhr = new XMLHttpRequest();
		xhr.open("GET", "curpw.jsp?userpw=" + userpw, true);
		xhr.send();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
				// alert(xhr.responseText);

				if (xhr.responseText.trim() == "ok") {
					alert("비밀번호가 일치하지 않습니다.");
				} else {
					document.getElementById("new_pw").style.display="block"
				}
			}
		}

	}
}

// 비밀번호 변경
function changepw(){
	let frm = document.infoForm;
	let change_pw = frm.change_pw;
	let new_pw = frm.new_pw;
	
	if(change_pw.value == new_pw.value){
		alert("이전 비밀번호와 동일합니다.");
		new_pw.focus();
		return false;
	} else if (new_pw.value == ""){
		alert("새로운 비밀번호를 입력하세요.");
		new_pw.focus();
		return false;
	} else if (new_pw.value.length < 8){
		alert("새로운 비밀번호는 8자리 이상으로 입력해주세요.");
		new_pw.focus();
		return false;
	} else if (new_pw.value.length >= 8 && change_pw.value!= new_pw.value){
		alert("비밀번호가 변경되었습니다.");
	}
	frm.submit();
}

function removeId(){
//	document.getElementById("deleteId_box").style.display="block"
}

function chkRemove(userpw){
	let frm = document.deleteForm;
	if (userpw == "") {
		alert("비밀번호를 입력해주세요.");
		return false;
	} else {
		// ajax 통신
		let xhr = new XMLHttpRequest();
		xhr.open("GET", "curpw.jsp?userpw=" + userpw, true);
		xhr.send();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
				// alert(xhr.responseText);

				if (xhr.responseText.trim() == "ok") {
					alert("비밀번호가 일치하지 않습니다.");
				} else {
				 	var removeId = confirm("정말 탈퇴하시겠습니까?");
				 	var input = document.getElementById("pwInput");
				 	if(removeId){
				 		alert("탈퇴가 완료되었습니다.");
				 		frm.submit();
				 	}else{
				 		document.getElementById("deleteId_box").style.display="none"
				 		input.value = null;
				 	}
				}
			}
		}

	}
}