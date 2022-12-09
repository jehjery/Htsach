package bean;

public class giohangbean {
	private String Masach;
	private String Tensach;	
	private long soluong;
	private long Gia;
	private long Thanhtien;
	private String Anh;
	public String getMasach() {
		return Masach;
	}
	public void setMasach(String masach) {
		Masach = masach;
	}
	public String getTensach() {
		return Tensach;
	}
	public void setTensach(String tensach) {
		Tensach = tensach;
	}
	public long getSoluong() {
		return soluong;
	}
	public void setSoluong(long soluong) {
		this.soluong = soluong;
	}
	public long getGia() {
		return Gia;
	}
	public void setGia(long gia) {
		Gia = gia;
	}
	public long getThanhtien() {
		return soluong*Gia;
	}
	public void setThanhtien(long thanhtien) {
		Thanhtien = Gia*soluong;
	}
	public String getAnh() {
		return Anh;
	}
	public void setAnh(String anh) {
		Anh = anh;
	}
	public giohangbean(String masach, String tensach, long soluong, long gia, String anh) {
		super();
		Masach = masach;
		Tensach = tensach;
		this.soluong = soluong;
		Gia = gia;
		Thanhtien = soluong*gia;
		Anh = anh;
	}
	
}

