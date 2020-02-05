package com.kh.petner.market.model.dao;

import static com.kh.petner.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.petner.market.model.vo.Market;

public class MarketDao {
	
	private Properties prop;
	
	public MarketDao() {
		prop = new Properties();
		
		String filePath = MarketDao.class.getResource("/config/market-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch(IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 매장 추가
	 * @param conn
	 * @param m
	 * @return
	 */
	public int insertMarket(Connection conn, Market m) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertMarket");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m.getMarketName());
			pstmt.setString(2, m.getMarketPwd());
			pstmt.setString(3, m.getMarketEmail());
			pstmt.setString(4, m.getMarketType());
			pstmt.setString(5, m.getMarketTel());
			pstmt.setString(6, m.getMarketCellPhone());
			pstmt.setString(7, m.getMarketAddress());
			pstmt.setString(8, m.getMarketShowFile());
			pstmt.setString(9, m.getMarketCheckData());
			
			result = pstmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	/**
	 * 권구현
	 * 상점 리스트 출력
	 * @param conn
	 * @return
	 */
	public ArrayList<Market> selectList(Connection conn) {
		System.out.println("[Dao] selectList() 시작");
		ArrayList<Market> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectList");
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			list = new ArrayList<Market>();
			
			while(rset.next()) {
				
				Market m = new Market();
				
				m.setMarketId(rset.getInt("MARKET_ID"));
				m.setMarketName(rset.getString("MARKET_NAME"));
				m.setMarketPwd(rset.getString("MARKET_PASSWORD"));
				m.setMarketEmail(rset.getString("MARKET_EMAIL"));
				m.setMarketType(rset.getString("MARKET_TYPE"));
				m.setMarketTel(rset.getString("MARKET_TEL"));
				m.setMarketCellPhone(rset.getString("MARKET_CELLPHONE"));
				m.setMarketAddress(rset.getString("MARKET_ADDRESS"));
				m.setMarketShowFile(rset.getString("MARKET_UPLOADFILE"));
				m.setEnDate(rset.getDate("ENDATE"));
				m.setStatus(rset.getString("STATUS"));
				
				list.add(m);
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		System.out.println("[Dao] selectList() 종료");

		return list;
	}

	/**
	 * 마켓 정보 하나 불러오기
	 * @param conn
	 * @param marketId
	 * @return
	 */
	public Market selectOne(Connection conn, int marketId) {
		System.out.println("[Dao] selectOne() 시작 marketId : " + marketId);
		Market m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectOne");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, marketId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Market();
				
				m.setMarketId(rset.getInt("MARKET_ID"));
				m.setMarketName(rset.getString("MARKET_NAME"));
				m.setMarketPwd(rset.getString("MARKET_PASSWORD"));
				m.setMarketEmail(rset.getString("MARKET_EMAIL"));
				m.setMarketType(rset.getString("MARKET_TYPE"));
				m.setMarketTel(rset.getString("MARKET_TEL"));
				m.setMarketCellPhone(rset.getString("MARKET_CELLPHONE"));
				m.setMarketAddress(rset.getString("MARKET_ADDRESS"));
				m.setMarketShowFile(rset.getString("MARKET_UPLOADFILE"));
				m.setEnDate(rset.getDate("ENDATE"));
				m.setStatus(rset.getString("STATUS"));
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		System.out.println("[Dao] selectOne() 종료 " + m);
		return m;
	}

	/**
	 * 마켓 정보 수정
	 * @param conn
	 * @param m
	 * @return
	 */
	public int updateMarket(Connection conn, Market m) {
		System.out.println("[Dao] updateMarket() :" + m);
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateMarket");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m.getMarketName());
			pstmt.setString(2, m.getMarketPwd());
			pstmt.setString(3, m.getMarketEmail());
			pstmt.setString(4, m.getMarketType());
			pstmt.setString(5, m.getMarketTel());
			pstmt.setString(6, m.getMarketCellPhone());
			pstmt.setString(7, m.getMarketAddress());
			pstmt.setString(8, m.getMarketShowFile());
			pstmt.setString(9, m.getMarketCheckData());
			pstmt.setInt(10, m.getMarketId());

			result = pstmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	/**
	 * 마켓 삭제
	 * @param conn
	 * @param marketId
	 * @return
	 */
	public int deleteMarket(Connection conn, int marketId) {
		System.out.println("[Dao] deleteMarket()");
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteMarket");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, marketId);
			
			result = pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

}
