package kr.co.member;

import java.io.Serializable;

public class MemberDTO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int userNum; 
	private String userId; 
	private String userPassword; 
	private String userName; 
	private String userNickname; 
	private String userAddress; 
	private String userDay; 
	
	public MemberDTO() {
		// TODO Auto-generated constructor stub
	}

	public MemberDTO(int userNum, String userId, String userPassword, String userName, String userNickname,
			String userAddress, String userDay) {
		super();
		this.userNum = userNum;
		this.userId = userId;
		this.userPassword = userPassword;
		this.userName = userName;
		this.userNickname = userNickname;
		this.userAddress = userAddress;
		this.userDay = userDay;
	}

	public int getUserNum() {
		return userNum;
	}

	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserDay() {
		return userDay;
	}

	public void setUserDay(String userDay) {
		this.userDay = userDay;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((userId == null) ? 0 : userId.hashCode());
		result = prime * result + userNum;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MemberDTO other = (MemberDTO) obj;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		if (userNum != other.userNum)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "MemberDTO [userNum=" + userNum + ", userId=" + userId + ", userName=" + userName + ", userNickname="
				+ userNickname + ", userAddress=" + userAddress + ", userDay=" + userDay + "]";
	}
	
	
}
