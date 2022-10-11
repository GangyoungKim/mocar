package mocar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import dao.BoardDAO_qna;

public class BoardListAction_qna implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ActionForward forward = new ActionForward();
		BoardDAO_qna bdao = new BoardDAO_qna();
		
		// 전체 게시글 개수
		int totalCnt = bdao.getBoardCnt();
		
		// 페이징 처리
		// 현재 넘겨받은 페이지
		String temp = req.getParameter("page");
		int page = 0;
		
//		if( temp == null ) {
//			page = 1;
//		} else {
//			page = Integer.parseInt(temp);
//		}
		
		page = temp == null ? 1 : Integer.parseInt(temp); 
		
		// 페이지 처리 [1][2]...[10] : 10개씩
		int pageSize = 10;
		
		// 1페이지 endRow = 10, 4 페이지 endRow = 40
		int endRow = page *10;
		// 1페이지 startRow = 1, 4 페이지 startRow = 31
		int startRow = endRow -9;
		
		// [1][2]...[10] : [1], [11][12]..[20] : [11]
		int startPage = (page -1) / pageSize*pageSize + 1;
		// [1][2]...[10] : [10], [11][12]..[20] : [20]
		int endPage = startPage + pageSize -1;
		int totalPage = (totalCnt -1)/pageSize + 1;
		
		System.out.println("endRow : " + endRow);
		System.out.println("startRow : " + startRow);
		System.out.println("startPage : " + startPage);
		System.out.println("endPage : " + endPage);
		System.out.println("totalPage : " + totalPage);
		System.out.println("---------------------------------");
		
		endPage = endPage > totalPage ? totalPage : endPage;
		
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("nowPage", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		
		req.setAttribute("totalCnt", totalCnt);
		req.setAttribute("boardList", bdao.getBoardList(startRow, endRow));
		
		forward.setRedirect(false);
		forward.setPath( req.getContextPath() + "/mocar/boardlist_qna.jsp" );
		
		return forward;
	}

}









