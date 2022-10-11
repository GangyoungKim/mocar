package mocar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import action.ActionForward;
import dao.UserDAO;
import dao.UserDTO;

public class mypage_deleteAction implements Action {
   
   @Override
   public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
      UserDAO udao = new UserDAO();
      ActionForward forward = new ActionForward();
      HttpSession session = req.getSession();
      
      String userid = (String)session.getAttribute("userid");
      String userpw = req.getParameter("pwInput");
      
      boolean result = udao.curpw(userpw, userid);
      
      
      if(result) {
         udao.deleteId(userid);
         session.removeAttribute("login2");
         forward.setPath(req.getContextPath() + "/mocar/index.jsp");
      }else {
         forward.setPath(req.getContextPath() + "/mocar/mypage.jsp?removepw=false");
         req.setAttribute("remove_mag","비밀번호가 맞지않습니다 다시 시도해 주세요.");
      }
      forward.setRedirect(false);
      return forward;
   }
}