package mocar;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.ActionForward;

@WebServlet("*.mc")
public class FrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		doprocess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		doprocess(req, resp);
	}
	
	protected void doprocess(HttpServletRequest req, HttpServletResponse resp) 
			throws IOException, ServletException {
		String requestURI = req.getRequestURI();
		ActionForward forward = null;
		
		
		switch (requestURI) {
			case "/mocar/index.mc":
				forward = new UserJoinAction().execute(req, resp);
				break;
				
			case "/mocar/login.mc":
				forward = new loginAction().execute(req, resp);
				break;
				
			case "/mocar/id.mc":
				forward = new idAction().execute(req, resp);
				break;
				
			case "/mocar/pw.mc":
				forward = new pwAction().execute(req, resp);
				break;
				
			case "/mocar/mypage.mc":
				forward = new mypageAction().execute(req, resp);
				break;
				
			case "/mocar/mypage_member.mc":
				forward = new mypage_memberAction().execute(req, resp);
				break;
				
			case "/mocar/mypage_coupon.mc":
				forward = new mypage_couponAction().execute(req, resp);
				break;
				
			case "/mocar/deleteId.mc":
	            forward = new mypage_deleteAction().execute(req, resp);
	            break;
//			--------------------------------------------------------------- 예약하기
			case "/mocar/rent2.mc":
				forward = new Rent2().execute(req, resp);
				break;
			case "/mocar/CarinfoList.mc":
				System.out.println("/CarinfoList.mc 도착"); // 메인에서 렌트예약 페이지 클릭 시 
				forward = new CarinfoListAction().execute(req, resp);
				break;
			case "/mocar/carinfoListFindToType.mc":
				forward = new CarinfoListFindToTypeOk().execute(req, resp);
				break;
			case "/mocar/CarRentview.mc":
				System.out.println("CarRentview.mc 도착"); // 렌트예약 페이지에서 특정차량 예약신청 클릭 시, 예약하기 버튼 클릭 후 다시 돌아옴(5번)
				forward = new CarRentViewAction().execute(req, resp);
				break;
			case "/mocar/CarRent.mc":
				System.out.println("CarRent 1번"); // 차량 날짜 선택 후 예약하기 버튼 클릭 시 (1번)
				forward = new CarRentAction().execute(req, resp);
				break;
//			--------------------------------------------------------------- 공지사항
				
			case "/mocar/Boardlist.mc":
				forward = new BoardListAction().execute(req, resp);
				break;
				
			case "/mocar/BoardWrite.mc":
				forward = new ActionForward(true, req.getContextPath() + "/mocar/boardwrite.jsp");
				break;
				
			case "/mocar/BoardWriteOk.mc":
				forward = new BoardWriteOkAction().execute(req, resp);
				break;
				
			case "/mocar/BoardView.mc":
				forward = new BoardViewAction().execute(req, resp);
				break;
				
			case "/mocar/BoardModify.mc":
				forward = new BoardModifyAction().execute(req, resp);
				break;
				
			case "/mocar/BoardModifyOk.mc":
				forward = new BoardModifyOkAction().execute(req, resp);
				break;
				
			case "/mocar/DeleteBoard.mc":
				forward = new DeleteBoardAction().execute(req, resp);
				break;
				
			case "/mocar/AddReply.mc": 
				 forward = new AddReplyAction().execute(req, resp);
				break; 
			  
			case "/mocar/UpdateReply.mc": 
				 forward = new UpdateReplyAction().execute(req, resp); 
				break; 
			
			case "/mocar/DeleteReply.mc":
				forward = new DeleteReplyAction().execute(req, resp);
			  	break;
			  	
//			-----------------------------------------------------------------------------Q&A
			  	
			case "/mocar/Boardlist_qna.mc":
				forward = new BoardListAction_qna().execute(req, resp);
				break;
			case "/mocar/BoardWrite_qna.mc":
				forward = new ActionForward(true, req.getContextPath() + "/mocar/boardwrite_qna.jsp");
				break;
			case "/mocar/BoardWriteOk_qna.mc":
				forward = new BoardWriteOkAction_qna().execute(req, resp);
				break;
			case "/mocar/BoardView_qna.mc":
				forward = new BoardViewAction_qna().execute(req, resp);
				break;
			case "/mocar/BoardModify_qna.mc":
				forward = new BoardModifyAction_qna().execute(req, resp);
				break;
			case "/mocar/BoardModifyOk_qna.mc":
				forward = new BoardModifyOkAction_qna().execute(req, resp);
				break;
				
			case "/mocar/DeleteBoard_qna.mc":
				forward = new DeleteBoardAction_qna().execute(req, resp);
				break;
			 
		}
	
	
		// 일괄처리
		if ( forward != null ) {
			if (forward.isRedirect()) { 	// redirect
				resp.sendRedirect(forward.getPath());
			} else {						// forward
				RequestDispatcher disp = req.getRequestDispatcher(forward.getPath());
				disp.forward(req, resp);
			}
		}
		
	}
}
