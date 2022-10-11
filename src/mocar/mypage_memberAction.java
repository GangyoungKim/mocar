package mocar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import action.ActionForward;
import dao.UserDAO;
import dao.UserDTO;

public class mypage_memberAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		UserDAO udao = new UserDAO();
		ActionForward forward = new ActionForward();
		HttpSession session = req.getSession();
		
		String new_pw = req.getParameter("new_pw");
		String userid = (String)session.getAttribute("userid");
		String userpw = req.getParameter("change_pw");
//		udao.new_pw(new_pw, userid, userpw);
//		req.setAttribute("new_pw", userpw);
		//System.out.println(udao.new_pw(new_pw, userid, userpw));
		if(udao.new_pw(new_pw, userid, userpw)) {
			req.setAttribute("new_pw", userpw);
			forward.setPath(req.getContextPath() + "/mocar/index.jsp");
			session.invalidate();
		}else {
			forward.setPath(req.getContextPath() + "/mocar/index.jsp");
		}
		forward.setRedirect(false);
		return forward;
	}

}
