package dao;

import java.util.ArrayList;

import bean.Sinhvienbean;
import bean.sachbean;

public class SinhVienDao {
	public ArrayList<Sinhvienbean> DSSvien= new ArrayList<Sinhvienbean>();
	public ArrayList<Sinhvienbean> GetSV(){
		   DSSvien.add(new Sinhvienbean("19T1021231", "Trần Trân",
				   "thừa thiên huế","19T1021231@husc.edu.vn","CNTT", "b1.jpg"));
		   DSSvien.add(new Sinhvienbean("19T1021231", "Trần Trâ",
				   "thừa thiên huế","19T1021231@husc.edu.vn","Mac", "a3.jpg"));
		   DSSvien.add(new Sinhvienbean("19T1021231", "Trần Tr",
				   "thừa thiên huế","19T1021231@husc.edu.vn","MT", "a4.jpg"));
		   DSSvien.add(new Sinhvienbean("19T1021231", "Trần Trânn",
				   "thừa thiên huế","19T1021231@husc.edu.vn","MT", "a5.jpg"));
		   DSSvien.add(new Sinhvienbean("19T1021231", "Trần Trâng",
				   "thừa thiên huế","19T1021231@husc.edu.vn","Mac", "a1.jpg"));
		   DSSvien.add(new Sinhvienbean("19T1021231", "Trần Trânăn",
				   "thừa thiên huế","19T1021231@husc.edu.vn","CNTT", "b1.jpg"));
		return DSSvien;
}
	
}
