package dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlMapConfig;


public class BoardDAO_qna {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public BoardDAO_qna() {
		// autocommit
		sqlsession = factory.openSession(true);
	}

	public List<BoardDTO_qna> getBoardList( int startRow, int endRow ) {
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		List<BoardDTO_qna> boardList = sqlsession.selectList("Board_qna.getBoardList", datas);
		return boardList;
	}

	public int getBoardCnt() {
		return sqlsession.selectOne("Board_qna.getBoardCnt");
	}

	public boolean insertBoard(BoardDTO_qna board) {
		boolean result = false;
		
		if(sqlsession.insert("Board_qna.insertBoard", board) == 1) {
			result = true;
		}
		
		System.out.println("result : "+result);
		
		return result;
	}
	public boolean boardModify(int boardnum, String boardcontent) {
		boolean result = false;
		HashMap<String, Object> datas = new HashMap<>();
		datas.put("boardnum", boardnum);
		datas.put("boardcontent", boardcontent);
		System.out.println("dao조회");
		if(sqlsession.update("Board_qna.boardModify", datas) !=0) {
			result = true;
		}
		
		return result;
	}
	
	public boolean deleteBoard(int boardnum) {
		boolean result = false;
		System.out.println("딜리보트 다오조회");
		if(sqlsession.delete("Board_qna.deleteBoard", boardnum)==1) {
			
			result = true;
			System.out.println("딜리보트 다오도착");	
		}
		
		return result;
	}


	public BoardDTO_qna getDetail(int boardnum) {
		return (BoardDTO_qna)sqlsession.selectOne("Board_qna.getDetail", boardnum);
	}

	public void updateReadCount(int boardnum) {
		sqlsession.update("Board_qna.updateReadCount",boardnum);
	}

	public int getSeq() {
		return sqlsession.selectOne("Board_qna.getSeq");
	}


}


















