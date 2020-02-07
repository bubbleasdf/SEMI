package com.kh.petner.market.model.vo;

import java.io.Serializable;

public class MarketDetail implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -2824195414268411713L;
	private String marketId;          // 매장별 id
	private String marketCheck;       // 매장 특징
	private String marketPhone;       // 매장 연락번호
	private String marketPhotoDetail; // 매장 사진 3개
	private String marketSub;         // 매장가는길(지하철)
	private String marketBus;         // 매장가는길(버스)
	private String marketCar;         // 매장가는길(자가용)
	
	// 기본 생성자
	public MarketDetail() {
		super();
	}

	// 매개변수 생성자
	public MarketDetail(String marketId, String marketCheck, String marketPhone, String marketPhotoDetail,
			String marketSub, String marketBus, String marketCar) {
		super();
		marketId = marketId;
		marketCheck = marketCheck;
		marketPhone = marketPhone;
		marketPhotoDetail = marketPhotoDetail;
		marketSub = marketSub;
		marketBus = marketBus;
		marketCar = marketCar;
	}

	public String getMarketId() {
		return marketId;
	}

	public void setMarketId(String marketId) {
		this.marketId = marketId;
	}

	public String getMarketCheck() {
		return marketCheck;
	}

	public void setMarketCheck(String marketCheck) {
		this.marketCheck = marketCheck;
	}

	public String getMarketPhone() {
		return marketPhone;
	}

	public void setMarketPhone(String marketPhone) {
		this.marketPhone = marketPhone;
	}

	public String getMarketPhotoDetail() {
		return marketPhotoDetail;
	}

	public void setMarketPhotoDetail(String marketPhotoDetail) {
		this.marketPhotoDetail = marketPhotoDetail;
	}

	public String getMarketSub() {
		return marketSub;
	}

	public void setMarketSub(String marketSub) {
		this.marketSub = marketSub;
	}

	public String getMarketBus() {
		return marketBus;
	}

	public void setMarketBus(String marketBus) {
		this.marketBus = marketBus;
	}

	public String getMarketCar() {
		return marketCar;
	}

	public void setMarketCar(String marketCar) {
		this.marketCar = marketCar;
	}

	@Override
	public String toString() {
		return "MarketDetail [marketId=" + marketId + ", marketCheck=" + marketCheck + ", marketPhone=" + marketPhone
				+ ", marketPhotoDetail=" + marketPhotoDetail + ", marketSub=" + marketSub + ", marketBus=" + marketBus
				+ ", marketCar=" + marketCar + "]";
	}
	

}
