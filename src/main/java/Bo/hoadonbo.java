package Bo;

import java.util.ArrayList;
import bean.hoadonbean;
import dao.hoadondao;

public class hoadonbo {

	hoadondao hoadon=  new hoadondao();
	public ArrayList<hoadonbean> findAll() {
		return hoadon.findAll();
	}
	public void insert(hoadonbean l) {
		System.out.println("lưu thành công vào lúc :");
		System.out.println(l.getNgaythanhtoan().toString());
		hoadon.insert(l);
	}
	public void delete(hoadonbean a) {
		hoadon.delete(a);
	}
}
