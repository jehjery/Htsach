package dao;

import java.util.ArrayList;

import bean.Monhocbean;

public class MonHocDao {
	 
	
	 public ArrayList<Monhocbean> GetMonHoc(){
		 ArrayList<Monhocbean> dsMonHoc= new ArrayList<Monhocbean>();
		dsMonHoc.add(new Monhocbean("CNTT","IT"));
		dsMonHoc.add(new Monhocbean("Mac","Triet học"));
		dsMonHoc.add(new Monhocbean("MT","Môi Trường"));
		return dsMonHoc;
	}
}
