package mocar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import dao.BoardDAO_qna;
import dao.BoardDTO_qna;

public class BoardWriteOkAction_qna implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		BoardDAO_qna bdao = new BoardDAO_qna();
		
		String boardtitle = req.getParameter("boardtitle");
		String boardcontent = req.getParameter("boardcontent");
		String username = req.getParameter("username");
		
		BoardDTO_qna board = new BoardDTO_qna();
		board.setBoardtitle(boardtitle);
		board.setBoardcontent(boardcontent);
		board.setUsername(username);
		
		forward.setRedirect(true);
		
		if(bdao.insertBoard(board)) {	//성공시
//			forward.setPath(req.getContextPath() + "/board/Boardlist.bo");
			int boardnum = bdao.getSeq();
			forward.setPath( req.getContextPath() + "/mocar/BoardView_qna.mc?boardnum=" + boardnum );
		} else {						//실패시
			forward.setPath(req.getContextPath() + "/mocar/BoardWrite_qna.mc");
		}
		
		return forward;
	}

}




























