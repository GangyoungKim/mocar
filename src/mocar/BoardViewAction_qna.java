package mocar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import dao.BoardDAO_qna;

public class BoardViewAction_qna implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		BoardDAO_qna bdao = new BoardDAO_qna();
		
		int boardnum = Integer.parseInt( req.getParameter("boardnum") );
		
		
		// 조회수 update
		bdao.updateReadCount(boardnum);
		
		req.setAttribute("board", bdao.getDetail(boardnum));
		forward.setRedirect(false);
		forward.setPath("/mocar/boardview_qna.jsp");
		
		return forward;
	}

}










