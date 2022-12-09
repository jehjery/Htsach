package bean;

public class Monhocbean {
	private String MaMon;
	private String TenMon;
	@Override
	public String toString() {
		return "Monhocbean [MaMon=" + MaMon + ", TenMon=" + TenMon + "]";
	}
	public String getMaMon() {
		return MaMon;
	}
	public void setMaMon(String maMon) {
		MaMon = maMon;
	}
	public String getTenMon() {
		return TenMon;
	}
	public void setTenMon(String tenMon) {
		TenMon = tenMon;
	}
	public Monhocbean(String maMon, String tenMon) {
		super();
		MaMon = maMon;
		TenMon = tenMon;
	}
	public Monhocbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
