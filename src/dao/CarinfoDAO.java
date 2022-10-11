package dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.ResultHandler;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlMapConfig;

public class CarinfoDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;

	public CarinfoDAO() {
		sqlsession = factory.openSession(true);
	}

	// 차량조회
	public List<CarinfoDTO> getCarinfoList(int startRow, int endRow) {
		// 페이징 추가
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);

		List<CarinfoDTO> carinfoList = sqlsession.selectList("Carinfo.getCarinfoList", datas);
		return carinfoList;

	}

	// 차량 카테고리별 조회
	public List<CarinfoDTO> getCarFromCarType(int cartype) {
		List<CarinfoDTO> carinfoList = sqlsession.selectList("Carinfo.getCarFromCarType", cartype);
		return carinfoList;
	}

	// 전체 글 개수
	public int getCarinfoCnt() {
		return sqlsession.selectOne("Carinfo.getCarinfoCnt");
	}

	public CarinfoDTO getDetail(int carnum) {
		return (CarinfoDTO) sqlsession.selectOne("Carinfo.getDetail", carnum);
	}

	// 렌트정보 넘기기
	public boolean carRent(CarRentDTO crdto) {
		boolean result = false;

		if (sqlsession.insert("Carinfo.getCarRent", crdto) == 1) {
			result = true;
		}

		return result;
	}

	// 렌트날짜 넘기기
	public boolean getRentNum(HashMap<String, String> map) {
		return (int) sqlsession.selectOne("Carinfo.getRentNum", map) == 0;
	}
}
