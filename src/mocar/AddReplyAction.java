package mocar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import dao.BoardDAO;
import dao.ReplyDTO;

public class AddReplyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		
		BoardDAO bdao = new BoardDAO();
		ReplyDTO reply = new ReplyDTO();
		
		int boardnum = Integer.parseInt( req.getParameter("boardnum"));
		
		reply.setBoardnum( boardnum );
		reply.setUsername( req.getParameter("username") );
		reply.setPassword( req.getParameter("password") );
		reply.setReplycontents( req.getParameter("replycontents") );
		
		if(bdao.addReply(reply)) {
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/mocar/BoardView.bo?boardnum=" + boardnum);
		} 
		
		return forward;
	}

}
