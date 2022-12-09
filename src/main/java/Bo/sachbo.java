package Bo;

import java.util.ArrayList;

import bean.sachbean;
import dao.sachdao;

public class sachbo {
    sachdao sdao=new sachdao();
    ArrayList<sachbean> ds;
    
    public ArrayList<sachbean> getsach(){
    	return ds;
    }
    public ArrayList<sachbean> TimMa(String maloai, ArrayList<sachbean> ds1){
		ArrayList<sachbean> tam= new ArrayList<sachbean>();
		if ((ds1!=null)&& (ds1.size()!=0))
		for(sachbean s: ds1)
			if(s.getMaloai().equals(maloai))
				tam.add(s);
		return tam;
	}
	public ArrayList<sachbean> Tim(String key,ArrayList<sachbean> ds1){
		ArrayList<sachbean> tam= new ArrayList<sachbean>();
		for(sachbean s: ds1) {
			if(s.getTensach().toLowerCase().trim().contains(key.toLowerCase().trim()) ||
			s.getTacgia().toLowerCase().trim().contains(key.toLowerCase().trim()) ||
			s.getMaloai().toLowerCase().trim().contains(
					key.toLowerCase().trim())) {
				tam.add(s);
			}
			if(s.getMasach().toLowerCase().trim().contains(key.toLowerCase().trim()) ||
					s.getTacgia().toLowerCase().trim().contains(key.toLowerCase().trim()) ||
					s.getMaloai().toLowerCase().trim().contains(
							key.toLowerCase().trim())) {
						tam.add(s);
					}
		}
		return tam;
	}
	public ArrayList<sachbean> findAll() {
		return sdao.findAll();
	}
	
	public ArrayList<sachbean> findAll(int page, int pageSize) {
		return sdao.findAll(page, pageSize);
	}
	public ArrayList<sachbean> findloai(String maloai) {
		return sdao.Findloai(maloai);
	}
	public void delete(String masach) {
		sdao.delete(masach);
	}
	public void insert(sachbean a) {
		sdao.insert(a);
	}
	public void update(sachbean a) {
		sdao.update(a);
	}
}



