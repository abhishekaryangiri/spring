package springmvc.model;

public class User {

	private String userEmail;
	private String userName;
	private String password;
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "User [userEmail=" + userEmail + ", userName=" + userName + ", password=" + password + "]";
	}

	
	
}


