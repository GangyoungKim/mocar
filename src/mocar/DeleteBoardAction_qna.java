package mocar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import dao.BoardDAO_qna;

public class DeleteBoardAction_qna implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		BoardDAO_qna bdao = new BoardDAO_qna();
		System.out.println("1번조회");
		int boardnum = Integer.parseInt(req.getParameter("boardnum"));
//		boolean boardnum = req.getParameter("boardnum");
		System.out.println("2번조회");
		if(bdao.deleteBoard(boardnum)) {
			forward.setRedirect(true);
//			forward.setPath(req.getContextPath()+ "/mocar/BoardView.mc?boardnum=" + boardnum);
			forward.setPath( req.getContextPath() + "/mocar/Boardlist_qna.mc" );
			System.out.println("3번조회");
		}
		return forward;
	}

}
