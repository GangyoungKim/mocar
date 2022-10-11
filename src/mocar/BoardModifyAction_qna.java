package mocar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import dao.BoardDAO_qna;

public class BoardModifyAction_qna implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		BoardDAO_qna bdao = new BoardDAO_qna();
		System.out.println("aaa");
		int boardnum = Integer.parseInt( req.getParameter("boardnum") );
		 
		req.setAttribute("board", bdao.getDetail(boardnum));
		forward.setRedirect(false);
		forward.setPath("/mocar/boardModify_qna.jsp");
		
		return forward;
	}

}
