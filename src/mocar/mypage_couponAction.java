package mocar;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import action.ActionForward;
import dao.UserDAO;
import dao.UserDTO;

public class mypage_couponAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		UserDAO udao = new UserDAO();
		UserDTO user = new UserDTO(); 
		ActionForward forward = new ActionForward();
		
		String couponnum = req.getParameter("couponnum");
		
		UserDTO coupon = udao.coupon(couponnum);
			 
		HttpSession session = req.getSession();
		
		if (udao.coupon(couponnum) != null) { 
			forward.setPath("/mocar/mypage.jsp"); 		
			
			session.setAttribute("coupon", coupon);
			System.out.println(coupon);
			
		} else {			    				 
			forward.setPath("/mocar/mypage.jsp");
		}
		
		forward.setRedirect(false);
		return forward;
	}

}
