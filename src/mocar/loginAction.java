package mocar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import action.ActionForward;
import dao.UserDAO;
import dao.UserDTO;

public class loginAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		UserDAO udao = new UserDAO();
		ActionForward forward = new ActionForward();
		
		// user.setUserid(req.getParameter("userid"));
		// user.setUserpw(req.getParameter("userpw"));
		
		String userid = req.getParameter("userid");
		String userpw = req.getParameter("userpw");
//		String new_pw2 = req.getParameter("new_pw2");
		HttpSession session = req.getSession();
		
		boolean udto  = udao.login(userid, userpw);
		String login_name = udao.login_name(userid, userpw);
		UserDTO user_info = udao.user_info(userid, userpw);
//		String new_pw = udao.new_pw(userpw);
		req.setAttribute("username", udto  );
		
		if (udao.login(userid, userpw)) { // 로그인 성공시
			
			session.setAttribute("login2", userid);
			session.setAttribute("login2", userpw);
			session.setAttribute("login2", login_name);
			session.setAttribute("userid", userid);
			session.setAttribute("removeId", userpw);
			req.setAttribute("removeId", userpw);
			forward.setPath("/mocar/index.jsp?flag2=false");
			
			session.setAttribute("login_name", login_name);
			req.setAttribute("login_name",login_name );
			
			session.setAttribute("user_info", user_info);
			req.setAttribute("user_info", user_info);
			
			session.setAttribute("curpw", userpw);
			req.setAttribute("curpw", userpw);

//			session.setAttribute("new_pw", new_pw);
//			req.setAttribute("new_pw", new_pw);
//			
//			System.out.println("액션 도착");
//			System.out.println(new_pw);
			
		} else {			    		  // 로그인 실패시
			forward.setPath("/mocar/index.jsp?flag=false");
		}
		
		forward.setRedirect(false);
		return forward;
	}
	
}