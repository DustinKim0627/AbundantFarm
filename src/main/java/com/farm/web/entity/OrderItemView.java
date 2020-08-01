package com.farm.web.entity;

import java.util.Date;

public class OrderItemView extends OrderItem{

	private String mUid;
	private String mName;
	private String iName;
	private String iRegName;
	private int iSellerId;
	private int iPrice;
	private String iImage;
	private Date oRegDate;
	private String oDes;
	
	public OrderItemView() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderItemView(int id, int orderId, int itemId, int deliveryId, int qty, String payMethod, String status,
			String deliveryMemo, String waybillNum, Date payDDate, Date payCDate) {
		super(id, orderId, itemId, deliveryId, qty, payMethod, status, deliveryMemo, waybillNum, payDDate, payCDate);
		// TODO Auto-generated constructor stub
	}


	public String getmUid() {
		return mUid;
	}

	public void setmUid(String mUid) {
		this.mUid = mUid;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getiName() {
		return iName;
	}

	public void setiName(String iName) {
		this.iName = iName;
	}

	public String getiRegName() {
		return iRegName;
	}

	public void setiRegName(String iRegName) {
		this.iRegName = iRegName;
	}

	public int getiSellerId() {
		return iSellerId;
	}

	public void setiSellerId(int iSellerId) {
		this.iSellerId = iSellerId;
	}

	public int getiPrice() {
		return iPrice;
	}

	public void setiPrice(int iPrice) {
		this.iPrice = iPrice;
	}

	public String getiImage() {
		return iImage;
	}

	public void setiImage(String iImage) {
		this.iImage = iImage;
	}

	public Date getoRegDate() {
		return oRegDate;
	}

	public void setoRegDate(Date oRegDate) {
		this.oRegDate = oRegDate;
	}

	public String getoDes() {
		return oDes;
	}

	public void setoDes(String oDes) {
		this.oDes = oDes;
	}

	@Override
	public String toString() {
		return "OrderItemView [mUid=" + mUid + ", mName=" + mName + ", iName=" + iName + ", iRegName=" + iRegName
				+ ", iSellerId=" + iSellerId + ", iPrice=" + iPrice + ", iImage=" + iImage + ", oRegDate=" + oRegDate
				+ ", oDes=" + oDes + ", toString()=" + super.toString() + "]";
	}

	
}
