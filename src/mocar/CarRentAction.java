package mocar;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import dao.CarRentDTO;
import dao.CarinfoDAO;

public class CarRentAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		CarinfoDAO cidao = new CarinfoDAO();
		CarRentDTO crdto = new CarRentDTO();

		// 렌트로직 (rentUUID 부여, 해당 carnum, 선택한 날짜 보내는 로직)
		System.out.println("렌트액션 도착 / CarRent 2번"); // 차량 날짜 선택 후 예약하기 버튼 클릭 시 (2번)

		int carnum = Integer.parseInt(req.getParameter("carnum"));

		SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");

		String[] searchDate = String.valueOf(req.getParameter("rentday")).split("~");
		crdto.setCarnum(Integer.parseInt(req.getParameter("carnum")));

		java.sql.Date startDate = java.sql.Date.valueOf(searchDate[0]);
		java.sql.Date endDate = java.sql.Date.valueOf(searchDate[1]);

		crdto.setRentstartday(startDate);
		crdto.setRentendday(endDate);

		// rentnum 랜덤생성
		// 필드명 -> rentUUID * UUID 강조되게
		crdto.setRentUUID(UUID.randomUUID().toString());

		// 예약날짜 중복 시 alert, 성공시 예약하기 버튼 클릭 시 예약 상세페이지 이동 필요
		HashMap<String, String> searchMap = new HashMap<String, String>();
		searchMap.put("rentstartday", searchDate[0]);
		searchMap.put("rentendday", searchDate[1]);
		searchMap.put("carnum", req.getParameter("carnum"));
		if (cidao.getRentNum(searchMap)) {
			System.out.println("예약성공"); // 차량 날짜 선택 후 예약하기 버튼 클릭 시 예약 성공 (3번)
			
			// ****렌트 예약 성공 시 다른 페이지로 넘어가기 필요(현재 같은 페이지로 이동중)****
			if (cidao.carRent(crdto)) {
				forward.setRedirect(true);
				forward.setPath(req.getContextPath() + "/mocar/CarRentview.mc?carnum=" + carnum);
			}
		} else {
			System.out.println("예약실패"); // 차량 날짜 선택 후 예약하기 버튼 클릭 시 예약 실패 (3번)
			try {
				PrintWriter writer = resp.getWriter();
				writer.println("<script>");
				writer.println("alert('실패')");
				writer.println("history.back()");
				writer.println("</script>");
				forward = null;
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		System.out.println("렌트예약 끝"); // 차량 날짜 선택 후 예약하기 버튼 클릭 시 (4번)
		return forward;
	}

}
