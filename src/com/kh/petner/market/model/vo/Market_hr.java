package com.kh.petner.market.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Market_hr implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -1963761637303018573L;
	private String MarketId;      // 매장별 id
	private String MarketEmail;   // 매장 이메일
	private String MarketPwd;     // 매장 비밀번호
	private String MarketType;    // 매장 타입
	private String MarketName;    // 매장 이름
	private String MarketAddress; // 매장 주소
	private String MarketTime;    // 매장 이용시간
	private String MarketDayoff;  // 매장 휴무일
	private String Marketscore;   // 매장 별점
	private String MarketPhoto;   // 매장 사진
	private Date Marketdate;      // 매장 등록일
	
	// 기본생성자
	public Market_hr() {
		super();
	}
	
	// 매개변수 생성자(date없는거)
	public Market_hr(String marketId, String marketEmail, String marketPwd, String marketType, String marketName,
			String marketAddress, String marketTime, String marketDayoff, String marketscore, String marketPhoto) {
		super();
		MarketId = marketId;
		MarketEmail = marketEmail;
		MarketPwd = marketPwd;
		MarketType = marketType;
		MarketName = marketName;
		MarketAddress = marketAddress;
		MarketTime = marketTime;
		MarketDayoff = marketDayoff;
		Marketscore = marketscore;
		MarketPhoto = marketPhoto;
	}

	// 매개변수 생성자(date있는거)
	public Market_hr(String marketId, String marketEmail, String marketPwd, String marketType, String marketName,
			String marketAddress, String marketTime, String marketDayoff, String marketscore, String marketPhoto,
			Date marketdate) {
		super();
		MarketId = marketId;
		MarketEmail = marketEmail;
		MarketPwd = marketPwd;
		MarketType = marketType;
		MarketName = marketName;
		MarketAddress = marketAddress;
		MarketTime = marketTime;
		MarketDayoff = marketDayoff;
		Marketscore = marketscore;
		MarketPhoto = marketPhoto;
		Marketdate = marketdate;
	}

	// getter & setter
	public String getMarketId() {
		return MarketId;
	}

	public void setMarketId(String marketId) {
		MarketId = marketId;
	}

	public String getMarketEmail() {
		return MarketEmail;
	}

	public void setMarketEmail(String marketEmail) {
		MarketEmail = marketEmail;
	}

	public String getMarketPwd() {
		return MarketPwd;
	}

	public void setMarketPwd(String marketPwd) {
		MarketPwd = marketPwd;
	}

	public String getMarketType() {
		return MarketType;
	}

	public void setMarketType(String marketType) {
		MarketType = marketType;
	}

	public String getMarketName() {
		return MarketName;
	}

	public void setMarketName(String marketName) {
		MarketName = marketName;
	}

	public String getMarketAddress() {
		return MarketAddress;
	}

	public void setMarketAddress(String marketAddress) {
		MarketAddress = marketAddress;
	}

	public String getMarketTime() {
		return MarketTime;
	}

	public void setMarketTime(String marketTime) {
		MarketTime = marketTime;
	}

	public String getMarketDayoff() {
		return MarketDayoff;
	}

	public void setMarketDayoff(String marketDayoff) {
		MarketDayoff = marketDayoff;
	}

	public String getMarketscore() {
		return Marketscore;
	}

	public void setMarketscore(String marketscore) {
		Marketscore = marketscore;
	}

	public String getMarketPhoto() {
		return MarketPhoto;
	}

	public void setMarketPhoto(String marketPhoto) {
		MarketPhoto = marketPhoto;
	}

	public Date getMarketdate() {
		return Marketdate;
	}

	public void setMarketdate(Date marketdate) {
		Marketdate = marketdate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	// toString
	@Override
	public String toString() {
		return "Market_hr [MarketId=" + MarketId + ", MarketEmail=" + MarketEmail + ", MarketPwd=" + MarketPwd
				+ ", MarketType=" + MarketType + ", MarketName=" + MarketName + ", MarketAddress=" + MarketAddress
				+ ", MarketTime=" + MarketTime + ", MarketDayoff=" + MarketDayoff + ", Marketscore=" + Marketscore
				+ ", MarketPhoto=" + MarketPhoto + ", Marketdate=" + Marketdate + "]";
	}
	
	
	
	
}
