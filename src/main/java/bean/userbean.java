package bean;

public class userbean {
	private String username ; 
	private String pass ;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public userbean(String username, String pass) {
		super();
		this.username = username;
		this.pass = pass;
	}
	@Override
	public String toString() {
		return "userbean [username=" + username + ", pass=" + pass + "]";
	} 
	
}
