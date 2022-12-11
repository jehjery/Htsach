package dao;
import java.util.ArrayList;
import org.bson.Document;
import org.bson.conversions.Bson;
import com.google.gson.Gson;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import bean.hoadonbean;
import connectDB.connectDB;
public class hoadondao {
	MongoDatabase database = connectDB.getInstance();
	MongoCollection<Document> Collection = database.getCollection("tbgiohang");
	public ArrayList<hoadonbean> getuser() {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<hoadonbean> findAll() {
		ArrayList<hoadonbean> dshoadon = new ArrayList<>();
		Collection.find().forEach(doc ->  
										{
											Gson gson = new Gson();
											hoadonbean hoadon = gson.fromJson(doc.toJson(), hoadonbean.class);
											dshoadon.add(hoadon);
										});						
		return dshoadon;
	}
	

	public void insert(hoadonbean l) {
		Gson gson = new Gson();
		Document doc = Document.parse(gson.toJson(l));
		Collection.insertOne(doc);
	}

	
	public Document update(hoadonbean l) {
		Bson filters = Filters.eq("stt", l.getNgaythanhtoan());		
		Gson gson = new Gson();
		Document doc = Document.parse(gson.toJson(l));
		return Collection.findOneAndUpdate(filters, doc);
	}
	
	public void delete(hoadonbean l) {
		Gson gson = new Gson();
		Document doc = Document.parse(gson.toJson(l));
		Collection.deleteOne(doc);
	}
}