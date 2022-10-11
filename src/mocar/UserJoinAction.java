package mocar;

import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import action.Action;
import action.ActionForward;
import dao.UserDAO;
import dao.UserDTO;

public class UserJoinAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		UserDAO udao = new UserDAO();
		UserDTO user = new UserDTO();
		ActionForward forward = new ActionForward();
		int result;
		
		user.setUserid(req.getParameter("userid"));
		user.setUserpw(req.getParameter("userpw"));
		user.setUsername(req.getParameter("username"));
		user.setUsermail(req.getParameter("usermail"));
		user.setUsermember(req.getParameter("usermember"));
		
		 SimpleDateFormat sdf = new SimpleDateFormat("yyyy/mm/dd");
		 Date date = null;
		 
		 try {
		 date = sdf.parse(req.getParameter("year")+"/"+req.getParameter("month")+"/"+req.getParameter("day"));
		 //입력받은 년,월,일을 date 포맷으로 변경
		 } catch (ParseException e) {
			 e.printStackTrace();
		 }
		 
		 user.setUserbirth(date);
		 
		 result = udao.join(user);
		 
		 if(result == 0){
			 	forward.setPath(req.getContextPath() + "/mocar/index.jsp");
		 }else{
				forward.setPath(req.getContextPath() + "/mocar/index.jsp");
		  }
		
		forward.setRedirect(false);
		return forward;
	}
	
}
