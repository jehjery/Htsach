package dao;

import java.util.ArrayList;

import bean.loaibean;
import bean.sachbean;

public class x {
   public ArrayList<loaibean> dsloai= new ArrayList<loaibean>();
   private loaidao ldao = new loaidao();
   public ArrayList<loaibean> getloai(){
	  ldao.insert(new loaibean("tin", "Công nghệ thông tin"));
	  ldao.insert(new loaibean("ly", "Vật lý"));
	  ldao.insert(new loaibean("toan", "Toán ứng dụng"));
	  ldao.insert(new loaibean("van", "Văn học Việt Nam"));
	   return dsloai;
   }
}
