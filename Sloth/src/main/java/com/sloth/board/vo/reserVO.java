package com.sloth.board.vo;

import java.sql.Date;

public class reserVO {
private int reserNum;
private Date reserCheckIn;
private Date reserCheckOut;
private int reserPrice;
private String reserMax;
private String id;
private int roomNum;
private String reserToday;
private String reserName;
private String reserRoomName;
private String reserAddress;

public String getReserAddress() {
	return reserAddress;
}

public void setReserAddress(String reserAddress) {
	this.reserAddress = reserAddress;
}

public String getReserName() {
	return reserName;
}

public void setReserName(String reserName) {
	this.reserName = reserName;
}

public reserVO() {
	// TODO Auto-generated constructor stub
}

@Override
public String toString() {
	return "reserVO [reserNum=" + reserNum + ", reserCheckIn=" + reserCheckIn + ", reserCheckOut=" + reserCheckOut
			+ ", reserPrice=" + reserPrice + ", reserMax=" + reserMax + ", id=" + id + ", roomNum=" + roomNum
			+ ", reserToday=" + reserToday + ", reserRoomName=" + getReserRoomName() + "]";
}

public String getReserRoomName() {
	return reserRoomName;
}

public void setReserRoomName(String reserRoomName) {
	 this.reserRoomName = reserRoomName;
}

public int getReserPrice() {
	return reserPrice;
}

public void setReserPrice(int reserPrice) {
	this.reserPrice = reserPrice;
}

public int getReserNum() {
	return reserNum;
}
public void setReserNum(int reserNum) {
	this.reserNum = reserNum;
}
public Date getReserCheckIn() {
	return reserCheckIn;
}
public void setReserCheckIn(Date reserCheckIn) {
	this.reserCheckIn = reserCheckIn;
}
public Date getReserCheckOut() {
	return reserCheckOut;
}
public void setReserCheckOut(Date reserCheckOut) {
	this.reserCheckOut = reserCheckOut;
}

public String getReserMax() {
	return reserMax;
}
public void setReserMax(String reserMax) {
	this.reserMax = reserMax;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public int getRoomNum() {
	return roomNum;
}
public void setRoomNum(int roomNum) {
	this.roomNum = roomNum;
}
public String getReserToday() {
	return reserToday;
}
public void setReserToday(String reserToday) {
	this.reserToday = reserToday;
}


}
