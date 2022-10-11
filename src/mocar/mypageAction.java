package mocar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import action.ActionForward;
import dao.UserDAO;
import dao.UserDTO;

public class mypageAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		UserDAO udao = new UserDAO();
		ActionForward forward = new ActionForward();
		
		forward.setPath(req.getContextPath() + "/mocar/mypage.jsp");
		
		
		forward.setRedirect(false);
		return forward;
	}
}
