package bean;

public class Sinhvienbean {
	private String MaSV; 
	private String TenSV;
	private String DiaChi;
	private String Email;
	private String MaMon;
	private String anh;
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getMaSV() {
		return MaSV;
	}
	public void setMaSV(String maSV) {
		MaSV = maSV;
	}
	public String getTenSV() {
		return TenSV;
	}
	public void setTenSV(String tenSV) {
		TenSV = tenSV;
	}
	public String getDiaChi() {
		return DiaChi;
	}
	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getMaMon() {
		return MaMon;
	}
	public void setMaMon(String maMon) {
		MaMon = maMon;
	}
	
	public Sinhvienbean(String maSV, String tenSV, String diaChi, String email, String maMon, String anh) {
		super();
		MaSV = maSV;
		TenSV = tenSV;
		DiaChi = diaChi;
		Email = email;
		MaMon = maMon;
		this.anh = anh;
	}
	public Sinhvienbean() {
		super();
		// TODO Auto-generated constructor stub
	}
}
