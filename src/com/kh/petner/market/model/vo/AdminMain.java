package com.kh.petner.market.model.vo;

import java.io.Serializable;

public class AdminMain implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3010565498269266693L;
	private int sumMarket;
	private int hotel;
	private int beauty;
	private int hospital;
	private int sumMember;
	
	public AdminMain(int sumMarket, int hotel, int beauty, int hospital, int sumMember) {
		super();
		this.sumMarket = sumMarket;
		this.hotel = hotel;
		this.beauty = beauty;
		this.hospital = hospital;
		this.sumMember = sumMember;
	}
	
	public AdminMain() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getSumMarket() {
		return sumMarket;
	}

	public void setSumMarket(int sumMarket) {
		this.sumMarket = sumMarket;
	}

	public int getHotel() {
		return hotel;
	}

	public void setHotel(int hotel) {
		this.hotel = hotel;
	}

	public int getBeauty() {
		return beauty;
	}

	public void setBeauty(int beauty) {
		this.beauty = beauty;
	}

	public int getHospital() {
		return hospital;
	}

	public void setHospital(int hospital) {
		this.hospital = hospital;
	}

	public int getSumMember() {
		return sumMember;
	}

	public void setSumMember(int sumMember) {
		this.sumMember = sumMember;
	}
	
	


	

}
