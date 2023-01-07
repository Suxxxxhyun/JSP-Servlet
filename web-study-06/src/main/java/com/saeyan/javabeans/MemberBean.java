package com.saeyan.javabeans; //패키지명 : 도메인이름.폴더이름.클래스이름

public class MemberBean { //MemberBean이라고 해도되고, Member라고 해도 되고 본인의 마음임.
	
	private String name;  //은닉의 개념을 사용하기 위해, 필드의 제한자를 private으로 하여, 직접 필드에 접근하기 못하게 하고
	private String userid; //필드에 값을 저장하고 얻어오기 위해서 -> 메소드를 정의함 -> getter/setter
	private String nickname;
	private String pwd;;
	private String email;
	private String phone;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
}
