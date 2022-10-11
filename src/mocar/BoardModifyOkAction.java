package mocar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import dao.BoardDAO;

public class BoardModifyOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		BoardDAO bdao = new BoardDAO();
		
		int boardnum = Integer.parseInt(req.getParameter("boardnum"));
		String boardcontent = req.getParameter("boardcontent");
		System.out.println(boardnum);
		System.out.println(boardcontent);
		
		if(bdao.boardModify(boardnum, boardcontent)) {
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/mocar/BoardView.mc?boardnum=" + boardnum);
		}
		System.out.println("액션조회");
		
		return forward;
	}

}
