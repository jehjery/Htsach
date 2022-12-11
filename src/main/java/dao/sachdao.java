package dao;


import java.util.ArrayList;


import org.bson.Document;
import org.bson.conversions.Bson;

import com.google.gson.Gson;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;

import bean.loaibean;
//import com.mongodb.client.model.Updates;
import bean.sachbean;
import connectDB.connectDB;

public class sachdao {
public	ArrayList<sachbean> dssach= new ArrayList<sachbean>();
	MongoDatabase database = connectDB.getInstance();
	MongoCollection<Document> collection = database.getCollection("tbSach"); 
	// lấy bảng 
	public ArrayList<sachbean> findAll(int page, int pageSize) {
		ArrayList<sachbean> listloai = new ArrayList<>();
		collection.find().skip(pageSize*(page-1)).limit(pageSize).forEach(doc ->  
		{
			Gson gson = new Gson();
			sachbean loai = gson.fromJson(doc.toJson(), sachbean.class);
			listloai.add(loai);
		});
		
		return listloai;
	}
	public ArrayList<sachbean> Findloai(String maloai) {
		Bson filter = Filters.eq("maloai", maloai);
		
		ArrayList<sachbean> list = new ArrayList<>();
		collection.find(filter).forEach(doc -> 
		{
			Gson gson = new Gson();
			sachbean sach = gson.fromJson(doc.toJson(), sachbean.class);
			list.add(sach);
		});
		
		
		return list;
	}
		
		public ArrayList<sachbean> findAll() {
			ArrayList<sachbean> list = new ArrayList<>();
			collection.find().forEach(doc -> 
			{
				Gson gson = new Gson();
				sachbean sach = gson.fromJson(doc.toJson(), sachbean.class);
				list.add(sach);
			});
			
			return list;
		}
		
		public void insert(sachbean l) {
			Gson gson = new Gson();
			Document doc = Document.parse(gson.toJson(l));
			collection.insertOne(doc);
		}
		public Document delete(String masach) {
			Bson filters = Filters.eq("masach", masach);		
			return collection.findOneAndDelete(filters);
		}
//		public void update(sachbean l) {
//			delete(l.getMasach());
//			insert(l);	
//		}
		public Document update(sachbean l) {
		
			Bson filters = Filters.eq("masach", l.getMasach());		
//			Gson gson = new Gson();
//			Document doc = Document.parse(gson.toJson(l));
			Bson updata= Updates.set("maloai", l.getMaloai());
			Bson updata1= Updates.set("tensach", l.getMasach());
			Bson updata2= Updates.set("tacgia", l.getTacgia());
			Bson updata3= Updates.set("gia", l.getGia());
			Bson updata4= Updates.set("Anh", l.getAnh());
			Bson updata5= Updates.set("masach", l.getMaloai());
			Bson updata6= Updates.set("soluong", l.getSoluong());
			Document a= new Document();
			a= collection.findOneAndUpdate(filters, updata);
			a= collection.findOneAndUpdate(filters, updata1);
			a= collection.findOneAndUpdate(filters, updata2);
			a= collection.findOneAndUpdate(filters, updata3);
			a= collection.findOneAndUpdate(filters, updata4);
			System.out.println(a);
			return a;
		}
	}



