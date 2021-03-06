package com.kh.petner.market.model.service;

import com.kh.petner.market.model.dao.MarketDao;
import com.kh.petner.market.model.vo.AdminMain;
import com.kh.petner.market.model.vo.Market;
import com.kh.petner.member.model.service.Reserve;
import com.kh.petner.member.model.vo.Member;

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
	public ArrayList<Market> selectMarketList() {
		System.out.println("[Service] selectMarketList() 시작");

		ArrayList<Market> list = new ArrayList<>();
		
		Connection conn = getConnection();
		
		list = mDao.selectMarketList(conn);
		
		close(conn);
		System.out.println("[Service] selectMarketList() 종료");

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

	/**
	 * 유저 리스트 생성
	 * @return
	 */
	public ArrayList<Member> selectUserList() {
		System.out.println("[Service] 유저 리스트 시작");
		ArrayList<Member> list = new ArrayList<>();
		Connection conn = getConnection();
		
		list = mDao.selectUserList(conn);
		
		close(conn);
		
		System.out.println("[service] 유저 리스트 종료");
		return list;
	}

	/**
	 * 권구현
	 * 2020. 2. 7.
	 * countMarket : 메인페이지에서 각 상점 카운트 세기
	 * @return
	 */
	public AdminMain countMarket() {
		AdminMain am = new AdminMain();
		
		Connection conn = getConnection();
		
		am = mDao.countMarket(conn);
		
		close(conn);
		
		return am;
	}

	/**
	 * 권구현
	 * 2020.02.07
	 * 호텔 예약 목록을 테이블로 보여줍니다.
	 * @return
	 */
	public ArrayList<Reserve> reserveList() {
		ArrayList<Reserve> list = new ArrayList<>();
		
		Connection conn = getConnection();
		
		list = mDao.reserveList(conn);
		
		close(conn);
		
		return list;
	}

	
}
