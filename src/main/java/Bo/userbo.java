package Bo;

import java.util.ArrayList;


import bean.userbean;
import dao.userdao;

public class userbo {
	userdao user=  new userdao();
	public ArrayList<userbean> findAll() {
		return user.findAll();
	}
	public void insert(userbean l) {
		user.insert(l);
	}
}
