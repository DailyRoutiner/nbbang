package model.domain;

import java.io.Serializable;

public class PayDTO implements Serializable{
	String memName;
	String memPw;
	String email;
	String account;
	String phoneNumber;
	String carPw;
	String memPic;
	int payCheck;
	int price;
	int memno;
	int totalfee;
	int meetno;
<<<<<<< HEAD
	int meetingType;
=======
>>>>>>> master
	String deviceId;
	
	public PayDTO() {}

	public PayDTO(int memno) {
		super();
		this.memno = memno;
	}

<<<<<<< HEAD
=======

>>>>>>> master
	public PayDTO(int memno, int meetno) {
		super();
		this.memno = memno;
		this.meetno = meetno;
	}
	public PayDTO(int price2, int totalfee2, int meetno2) {
		this.meetno = meetno2;
		this.price = price2;
		this.totalfee = totalfee2;
	}

	public PayDTO(String memName, String memPw, String email, String account,
<<<<<<< HEAD
			String phoneNumber, String carPw, String memPic, int payCheck,
			int price, int memno, int totalfee, int meetno, int meetingType,
			String deviceId) {
=======
			String phoneNumber, String carPw, int payCheck, int price,
			int memno, int totalfee, int meetno,String deviceId) {
>>>>>>> master
		super();
		this.memName = memName;
		this.memPw = memPw;
		this.email = email;
		this.account = account;
		this.phoneNumber = phoneNumber;
		this.carPw = carPw;
<<<<<<< HEAD
		this.memPic = memPic;
=======
>>>>>>> master
		this.payCheck = payCheck;
		this.price = price;
		this.memno = memno;
		this.totalfee = totalfee;
		this.meetno = meetno;
<<<<<<< HEAD
		this.meetingType = meetingType;
		this.deviceId = deviceId;
	}

=======
		this.deviceId=deviceId;
	}

	


	public String getDeviceId() {
		return deviceId;
	}


	public void setDeviceId(String deviceId) {
		this.deviceId = deviceId;
	}


	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("PayDTO [memName=");
		builder.append(memName);
		builder.append(", memPw=");
		builder.append(memPw);
		builder.append(", email=");
		builder.append(email);
		builder.append(", account=");
		builder.append(account);
		builder.append(", phoneNumber=");
		builder.append(phoneNumber);
		builder.append(", carPw=");
		builder.append(carPw);
		builder.append(", payCheck=");
		builder.append(payCheck);
		builder.append(", price=");
		builder.append(price);
		builder.append(", memno=");
		builder.append(memno);
		builder.append(", totalfee=");
		builder.append(totalfee);
		builder.append(", meetno=");
		builder.append(meetno);
		builder.append(", deviceId=");
		builder.append(deviceId);
		builder.append("]");
		return builder.toString();
	}


>>>>>>> master
	public String getMemName() {
		return memName;
	}

<<<<<<< HEAD
=======

>>>>>>> master
	public void setMemName(String memName) {
		this.memName = memName;
	}

<<<<<<< HEAD
=======

>>>>>>> master
	public String getMemPw() {
		return memPw;
	}

	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}

<<<<<<< HEAD
=======

>>>>>>> master
	public String getEmail() {
		return email;
	}

<<<<<<< HEAD
=======

>>>>>>> master
	public void setEmail(String email) {
		this.email = email;
	}

<<<<<<< HEAD
=======

>>>>>>> master
	public String getAccount() {
		return account;
	}

<<<<<<< HEAD
=======

>>>>>>> master
	public void setAccount(String account) {
		this.account = account;
	}

<<<<<<< HEAD
=======

>>>>>>> master
	public String getPhoneNumber() {
		return phoneNumber;
	}

<<<<<<< HEAD
=======

>>>>>>> master
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

<<<<<<< HEAD
=======

>>>>>>> master
	public String getCarPw() {
		return carPw;
	}

<<<<<<< HEAD
=======

>>>>>>> master
	public void setCarPw(String carPw) {
		this.carPw = carPw;
	}

<<<<<<< HEAD
	public String getMemPic() {
		return memPic;
	}

	public void setMemPic(String memPic) {
		this.memPic = memPic;
	}
=======
>>>>>>> master

	public int getPayCheck() {
		return payCheck;
	}

<<<<<<< HEAD
=======

>>>>>>> master
	public void setPayCheck(int payCheck) {
		this.payCheck = payCheck;
	}

<<<<<<< HEAD
=======

>>>>>>> master
	public int getPrice() {
		return price;
	}

<<<<<<< HEAD
=======

>>>>>>> master
	public void setPrice(int price) {
		this.price = price;
	}

<<<<<<< HEAD
=======

>>>>>>> master
	public int getMemno() {
		return memno;
	}

<<<<<<< HEAD
=======

>>>>>>> master
	public void setMemno(int memno) {
		this.memno = memno;
	}

<<<<<<< HEAD
=======

>>>>>>> master
	public int getTotalfee() {
		return totalfee;
	}

<<<<<<< HEAD
=======

>>>>>>> master
	public void setTotalfee(int totalfee) {
		this.totalfee = totalfee;
	}

<<<<<<< HEAD
=======

>>>>>>> master
	public int getMeetno() {
		return meetno;
	}

<<<<<<< HEAD
=======

>>>>>>> master
	public void setMeetno(int meetno) {
		this.meetno = meetno;
	}

<<<<<<< HEAD
	public int getMeetingType() {
		return meetingType;
	}

	public void setMeetingType(int meetingType) {
		this.meetingType = meetingType;
	}

	public String getDeviceId() {
		return deviceId;
	}

	public void setDeviceId(String deviceId) {
		this.deviceId = deviceId;
	}

	@Override
	public String toString() {
		return "PayDTO [memName=" + memName + ", memPw=" + memPw + ", email="
				+ email + ", account=" + account + ", phoneNumber="
				+ phoneNumber + ", carPw=" + carPw + ", memPic=" + memPic
				+ ", payCheck=" + payCheck + ", price=" + price + ", memno="
				+ memno + ", totalfee=" + totalfee + ", meetno=" + meetno
				+ ", meetingType=" + meetingType + ", deviceId=" + deviceId
				+ "]";
	}

=======
	
>>>>>>> master
}
