package kr.pitb.model;

public class UserVO {

	private String id;
	private String pw;
	private String nickname;
	
	public UserVO(String id, String pw, String nickname) {
		super();
		this.id = id;
		this.pw = pw;
		this.nickname = nickname;
	}
	
	public UserVO() {
		
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	
	
	
}
