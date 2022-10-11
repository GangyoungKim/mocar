package mocar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import dao.CarinfoDAO;

public class CarRentViewAction implements Action {

	// 차량 상세정보 이동
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		CarinfoDAO cidao = new CarinfoDAO();

		int carnum = Integer.parseInt(req.getParameter("carnum"));
		req.setAttribute("carinfoList", cidao.getDetail(carnum));
		forward.setRedirect(false);
		forward.setPath("/mocar/carrentview.jsp");

		return forward;
	}

}
