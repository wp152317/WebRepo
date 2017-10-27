package org.dimigo.vo;

public class UserVo {
	private String id;
	private String name;
	private String nickname;
	private String pwd;
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public UserVo() {
	}
	public UserVo(String id, String name, String nickname, String pwd) {
		super();
		this.id = id;
		this.name = name;
		this.nickname = nickname;
		this.pwd = pwd;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
}
