package mocar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import dao.CarinfoDAO;

public class Rent2 implements Action {

	// rent2.jsp를 rent2.mc로 변경 로직
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward af = new ActionForward();
		CarinfoDAO cidao = new CarinfoDAO();
		req.setAttribute("carinfoList", cidao.getCarinfoList(0, 0));
		af.setRedirect(false);
		af.setPath(req.getContextPath() +"/mocar/rent2.jsp");
		return af;
	}

}
