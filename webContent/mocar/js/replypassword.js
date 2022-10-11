	/*공지사항 삭제버튼*/
	function deleteReply(password, replynum) {
		/*let pw = prompt("댓글 비밀번호를 입력하세요.");*/
		if (pw == password) {
			document.replyForm.action = "${pageContext.request.contextPath}/board/DeleteReply.mc?replynum="
					+ replynum;
			document.replyForm.submit();
		}

	}
	// 공지사항 수정하기버튼
	function updateReadonlyReply(replynum) {
		document.getElementById('reply' + replynum).readOnly = false;
	}

	// 공지사항 수정확인버튼
	function updateReply(password, replynum) {
		/*let pw = prompt("댓글 비밀번호를 입력해주세요!");*/
		if (pw == password) {
			document.replyForm.action = "${pageContext.request.contextPath}/board/UpdateReply.mc?replynum="
					+ replynum;
			document.replyForm.submit();
		}
	}
