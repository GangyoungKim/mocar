package mocar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import dao.BoardDAO;
import dao.BoardDTO;

public class BoardWriteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		BoardDAO bdao = new BoardDAO();
		
		String boardtitle = req.getParameter("boardtitle");
		String boardcontent = req.getParameter("boardcontent");
		String username = req.getParameter("username");
		
		BoardDTO board = new BoardDTO();
		board.setBoardtitle(boardtitle);
		board.setBoardcontent(boardcontent);
		board.setUsername(username);
		
		forward.setRedirect(true);
		
		if(bdao.insertBoard(board)) {	//성공시
//			forward.setPath(req.getContextPath() + "/board/Boardlist.mc");
			int boardnum = bdao.getSeq();
			forward.setPath( req.getContextPath() + "/mocar/BoardView.mc?boardnum=" + boardnum );
		} else {						//실패시
			forward.setPath(req.getContextPath() + "/mocar/BoardWrite.mc");
		}
		
		return forward;
	}

}




























