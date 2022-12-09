package dao;

import java.util.ArrayList;
import org.bson.Document;
import org.bson.conversions.Bson;
import com.google.gson.Gson;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;

import bean.loaibean;

import connectDB.connectDB;

public class loaidao {
	MongoDatabase database = connectDB.getInstance();
	MongoCollection<Document> Collection = database.getCollection("tbLoaiSach");
	public ArrayList<loaibean> getloai() {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<loaibean> findAll() {
		ArrayList<loaibean> listloai = new ArrayList<>();
		Collection.find().forEach(doc ->  
		{
			Gson gson = new Gson();
			loaibean loai = gson.fromJson(doc.toJson(), loaibean.class);
			listloai.add(loai);
			System.out.println(listloai.size());
		});
		
		return listloai;
	}
	

	public void insert(loaibean l) {
		Gson gson = new Gson();
		Document doc = Document.parse(gson.toJson(l));
		Collection.insertOne(doc);
	}

	
	public Document update(loaibean l) {
		System.out.println(l.getMaloai());
		Bson filters = Filters.eq("maloai", l.getMaloai());		
//		Gson gson = new Gson();
//		Document doc = Document.parse(gson.toJson(l));
		Bson updata= Updates.set("tenloai", l.getTenloai());
		return Collection.findOneAndUpdate(filters, updata);
	}
	
	public Document delete(String maloai) {
		Bson filters = Filters.eq("maloai", maloai);		

		return Collection.findOneAndDelete(filters);
	}
}
