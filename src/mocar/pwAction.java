package mocar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import dao.UserDAO;

public class pwAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		UserDAO udao = new UserDAO();
		ActionForward forward = new ActionForward();
		
		String username = req.getParameter("username");
		String userid = req.getParameter("userid");
		String usermail = req.getParameter("usermail");
		
		String user_pw = udao.pw(username, userid, usermail);		// dao 받아오기
		
		req.setAttribute("user_pw", user_pw );						// 받아온 dao 이름주기 user_pw
		
		if (udao.pw(username, userid ,usermail) != null) {			// pw찾기 성공시
			forward.setPath("/mocar/index.jsp?flagpw2=false");
			req.setAttribute("message","비밀번호는 "+ user_pw +" 입니다.");
			System.out.println(user_pw);
			
		} else {			    		  							// PW찾기 실패시
			forward.setPath("/mocar/index.jsp?flagpw=false");
		}
		
		forward.setRedirect(false);
		return forward;
	}

}
