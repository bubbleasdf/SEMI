package com.kh.petner.market.model.service;

import com.kh.petner.market.model.dao.MarketDao;
import com.kh.petner.market.model.vo.Market;
import static com.kh.petner.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

public class MarketService {
	
	private MarketDao mDao = new MarketDao();

	/**
	 * 권구현
	 * 상점 추가
	 * @param m
	 * @return
	 */
	public int insertMarket(Market m) {
		System.out.println("[Service] insertMarket() 시작");
		Connection conn = getConnection();
		
		int result = mDao.insertMarket(conn, m);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		System.out.println("[Service] insertMarket() 종료 result = " + result);
		return result;
	}

	/**
	 * 권구현
	 * 상점 리스트 불러오기
	 * @return
	 */
	public ArrayList<Market> selectList() {
		System.out.println("[Service] selectList() 시작");

		ArrayList<Market> list = new ArrayList<>();
		
		Connection conn = getConnection();
		
		list = mDao.selectList(conn);
		
		close(conn);
		System.out.println("[Service] selectList() 종료");

		return list;
	}

	/**
	 * 마켓 하나 정보 불러오기 ㅡ> 수정하기
	 * @param marketId
	 * @return
	 */
	public Market selectOne(int marketId) {
		System.out.println("[Service] selectOne() 시작 marketId : " + marketId);
		Connection conn = getConnection();
		
		Market m = mDao.selectOne(conn, marketId);
		
		close(conn);

		System.out.println("[Service] selectOne() 종료 m : " + m);
		return m;
	}

	/**
	 * 마켓 정보 수정
	 * @param m
	 * @return
	 */
	public int updateMarket(Market m) {
		System.out.println("[Service] updateMarket() 시작 " + m);
		Connection conn = getConnection();
		
		int result = mDao.updateMarket(conn, m);
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	/**
	 * 마켓 삭제
	 * @param marketId
	 * @return
	 */
	public int deleteMarket(int marketId) {
		System.out.println("[Service] deleteMarket() 시작");
		
		Connection conn = getConnection();
		
		int result = mDao.deleteMarket(conn, marketId);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

}
