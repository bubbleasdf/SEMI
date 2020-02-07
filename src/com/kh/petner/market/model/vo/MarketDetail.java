package com.kh.petner.market.model.vo;

import java.io.Serializable;

public class MarketDetail implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -2824195414268411713L;
	private String MarketId;          // 매장별 id
	private String MarketCheck;       // 매장 특징
	private String MarketPhone;       // 매장 연락번호
	private String MarketPhotoDetail; // 매장 사진 3개
	private String MarketSub;         // 매장가는길(지하철)
	private String MarketBus;         // 매장가는길(버스)
	private String MarketCar;         // 매장가는길(자가용)
	
	// 기본 생성자
	public MarketDetail() {
		super();
	}

	// 매개변수 생성자
	public MarketDetail(String marketId, String marketCheck, String marketPhone, String marketPhotoDetail,
			String marketSub, String marketBus, String marketCar) {
		super();
		MarketId = marketId;
		MarketCheck = marketCheck;
		MarketPhone = marketPhone;
		MarketPhotoDetail = marketPhotoDetail;
		MarketSub = marketSub;
		MarketBus = marketBus;
		MarketCar = marketCar;
	}

	// getter & setter
	public String getMarketId() {
		return MarketId;
	}

	public void setMarketId(String marketId) {
		MarketId = marketId;
	}

	public String getMarketCheck() {
		return MarketCheck;
	}

	public void setMarketCheck(String marketCheck) {
		MarketCheck = marketCheck;
	}

	public String getMarketPhone() {
		return MarketPhone;
	}

	public void setMarketPhone(String marketPhone) {
		MarketPhone = marketPhone;
	}

	public String getMarketPhotoDetail() {
		return MarketPhotoDetail;
	}

	public void setMarketPhotoDetail(String marketPhotoDetail) {
		MarketPhotoDetail = marketPhotoDetail;
	}

	public String getMarketSub() {
		return MarketSub;
	}

	public void setMarketSub(String marketSub) {
		MarketSub = marketSub;
	}

	public String getMarketBus() {
		return MarketBus;
	}

	public void setMarketBus(String marketBus) {
		MarketBus = marketBus;
	}

	public String getMarketCar() {
		return MarketCar;
	}

	public void setMarketCar(String marketCar) {
		MarketCar = marketCar;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	// toString
	@Override
	public String toString() {
		return "MarketDetail [MarketId=" + MarketId + ", MarketCheck=" + MarketCheck + ", MarketPhone=" + MarketPhone
				+ ", MarketPhotoDetail=" + MarketPhotoDetail + ", MarketSub=" + MarketSub + ", MarketBus=" + MarketBus
				+ ", MarketCar=" + MarketCar + "]";
	}
	
	

}
