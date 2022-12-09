package bean;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.time.LocalDate;

public class hoadonbean {
	
	  private long sotien;
	  public Date ngaythanhtoan;
	  private ArrayList<giohangbean> listsach;

	public hoadonbean(long tongTien, Date now, ArrayList<giohangbean> list) {
		// đây đã ghi chi mô nên nó toàn null ==
		this.sotien = tongTien;
		this.ngaythanhtoan = now;
		this.listsach = list;
	}
	
	public long getSotien() {
		return sotien;
	}
	public void setSotien(long sotien) {
		this.sotien = sotien;
	}
	public Date getNgaythanhtoan() {
		return ngaythanhtoan;
	}
	public void setNgaythanhtoan(Date ngaythanhtoan) {
		this.ngaythanhtoan = ngaythanhtoan;
	}
	public ArrayList<giohangbean> getListsach() {
		return listsach;
	}
	public void setListsach(ArrayList<giohangbean> listsach) {
		this.listsach = listsach;
	}
	public int getsize() {
		return listsach.size();
	}
  
}
