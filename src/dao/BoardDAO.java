package dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlMapConfig;


public class BoardDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public BoardDAO() {
		// autocommit
		sqlsession = factory.openSession(true);
	}

	public List<BoardDTO> getBoardList( int startRow, int endRow ) {
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		List<BoardDTO> boardList = sqlsession.selectList("Board.getBoardList", datas);
		return boardList;
	}

	public int getBoardCnt() {
		return sqlsession.selectOne("Board.getBoardCnt");
	}

	public boolean insertBoard(BoardDTO board) {
		boolean result = false;
		
		if(sqlsession.insert("Board.insertBoard", board) == 1) {
			result = true;
		}
		
		System.out.println("result : "+result);
		
		return result;
	}

	public BoardDTO getDetail(int boardnum) {
		return (BoardDTO)sqlsession.selectOne("Board.getDetail", boardnum);
	}

	public void updateReadCount(int boardnum) {
		sqlsession.update("Board.updateReadCount",boardnum);
	}

	public int getSeq() {
		return sqlsession.selectOne("Board.getSeq");
	}
	public boolean boardModify(int boardnum, String boardcontent) {
		boolean result = false;
		HashMap<String, Object> datas = new HashMap<>();
		datas.put("boardnum", boardnum);
		datas.put("boardcontent", boardcontent);
		System.out.println("dao조회");
		if(sqlsession.update("Board.boardModify", datas) !=0) {
			result = true;
		}
		
		return result;
	}
	
	

	public List<ReplyDTO> getReplys(int boardnum) {
			List<ReplyDTO> list = sqlsession.selectList("Board.getReplys",boardnum);
		
		return list;
	}

	public boolean addReply(ReplyDTO reply) {
		boolean result = false;
		if(sqlsession.insert("Board.addReply", reply) != 0) {
			result = true;
		}
		return result;
	}

	public boolean updateReply(int replynum, String replycontents) {
		boolean result = false;
		HashMap<String, Object> datas = new HashMap<>();
		datas.put("replynum", replynum);
		datas.put("replycontents", replycontents);
		
		if(sqlsession.update("Board.updateReply", datas) != 0) {
			result = true;
		}
		
		return result;
	}

	public boolean deleteReply(int replynum) {
		boolean result = false;
		
		if(sqlsession.delete("Board.deleteReply", replynum) == 1)
			result = true;
		
		return result;
	}

	public boolean deleteBoard(int boardnum) {
		boolean result = false;
		System.out.println("딜리보트 다오조회");
		if(sqlsession.delete("Board.deleteBoard", boardnum)==1) {
			
			result = true;
			System.out.println("딜리보트 다오도착");	
		}
		
		return result;
	}

	

	
	
	

	
}


















