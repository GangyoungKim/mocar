package mocar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import dao.CarinfoDAO;

public class CarinfoListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		// 객체선언
		System.out.println("CarinfoListAction 도착"); // 메인에서 렌트예약 페이지 클릭 시 
		ActionForward forward = new ActionForward();
		CarinfoDAO cidao = new CarinfoDAO();
		// 페이징
		// 현재 페이지
		String temp = req.getParameter("page");
		int page = 0;

		page = temp == null ? 1 : Integer.parseInt(temp);

		// 전체 게시글 개수
		int totalCnt = cidao.getCarinfoCnt();

		// 페이징 차량 9개씩
		int pageSize = 9;

		// endRow 설정
		int endRow = page * 9;
		// startRow 설정
		int startRow = endRow - 8;
		// startPage 설정
		int startPage = (page - 1) / pageSize * pageSize + 1;
		// endPage 설정
		int endPage = startPage + pageSize - 1;
		// totalPAge 설정
		int totalPage = (totalCnt - 1) / pageSize + 1;

		endPage = endPage > totalPage ? totalPage : endPage;

		req.setAttribute("totalPage", totalPage);
		req.setAttribute("nowPage", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);

		req.setAttribute("totalCnt", totalCnt);
		req.setAttribute("carinfoList", cidao.getCarinfoList(startRow, endRow));

		forward.setRedirect(false);
		forward.setPath(req.getContextPath() + "/mocar/rent2.jsp");

		return forward;
	}

}
