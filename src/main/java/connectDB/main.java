package connectDB;

import java.util.ArrayList;

import org.bson.Document;

import com.google.gson.Gson;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

import Bo.loaibo;
import bean.loaibean;
import bean.sachbean;
import bean.userbean;

import dao.sachdao;

public class main {

	public static void main(String[] args) {
		
		// kết nối database 
		MongoDatabase database = connectDB.getInstance();
		MongoCollection<Document> collection = database.getCollection("tbSach"); // lấy bảng 
//		sachdao l= new sachdao();
//		l.getsach();
		
//		 đọc dữ liệu
		ArrayList<sachbean> list = new ArrayList<>();
		ArrayList<loaibean> loai1 = new ArrayList<>();
		ArrayList<userbean> loai2 = new ArrayList<>();
		collection.find().forEach(doc -> 
		{
//			Gson gson = new Gson();
//			userbean user = gson.fromJson(doc.toJson(), userbean.class);
//			loai2.add(user);
			System.out.println(doc);
		});
		
	
//		for(userbean s: loai2) {
//			System.out.print(s.getUsername());
//			System.out.print(s.getPass());
//		}
		
		
//		loaibo lbo = new loaibo();
//		lbo.findAll();
		
	
	}

}
