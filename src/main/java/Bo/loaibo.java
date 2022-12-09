package Bo;

import java.util.ArrayList;

import bean.loaibean;
import dao.loaidao;

public class loaibo {
	loaidao ldao= new loaidao();
	ArrayList<loaibean> ds;
	  public ArrayList<loaibean> getloai(){
		  ds=ldao.getloai();
		  return ds;
	  }
	public ArrayList<loaibean> findAll() {
		return ldao.findAll();
	}
	
	public void insert(loaibean l) {
		ldao.insert(l);
	}
	public void Update(loaibean l ) {
		ldao.update(l);
	}
	public void delete(String maloai) {
		ldao.delete(maloai);
	}
	
}


