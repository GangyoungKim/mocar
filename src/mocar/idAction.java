package mocar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import dao.UserDAO;

public class idAction implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		UserDAO udao = new UserDAO();
		ActionForward forward = new ActionForward();
		
		String username = req.getParameter("username");
		String usermail = req.getParameter("usermail");
		
		String user_id = udao.id(username,usermail);
		
		req.setAttribute("user_id", user_id );						
		
		if (udao.id(username, usermail) != null) { // id찾기 성공시
			forward.setPath("/mocar/index.jsp?flagid2=false"); 			
			req.setAttribute("message","아이디는 "+ user_id +" 입니다.");	// message에 값 넣어주기 
			System.out.println(user_id);
			
		} else {			    				  // id찾기 실패시
			forward.setPath("/mocar/index.jsp?flagid=false");
		}
		
		forward.setRedirect(false);
		return forward;
	} 
}
