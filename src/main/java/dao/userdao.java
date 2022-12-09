package dao;

import java.util.ArrayList;

import org.bson.Document;
import org.bson.conversions.Bson;

import com.google.gson.Gson;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;

import bean.loaibean;
import bean.userbean;
import connectDB.connectDB;

public class userdao {
	MongoDatabase database = connectDB.getInstance();
	MongoCollection<Document> Collection = database.getCollection("user");
	public ArrayList<userbean> getuser() {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<userbean> findAll() {
		ArrayList<userbean> listuser = new ArrayList<>();
		Collection.find().forEach(doc ->  
		{
			Gson gson = new Gson();
			userbean user = gson.fromJson(doc.toJson(), userbean.class);
			listuser.add(user);
		});
		
		return listuser;
	}
	

	public void insert(userbean l) {
		Gson gson = new Gson();
		Document doc = Document.parse(gson.toJson(l));
		Collection.insertOne(doc);
	}

	
	public Document update(userbean l) {
		Bson filters = Filters.eq("username", l.getUsername());		
		Gson gson = new Gson();
		Document doc = Document.parse(gson.toJson(l));
		return Collection.findOneAndUpdate(filters, doc);
	}
	
	public Document delete(String user) {
		Bson filters = Filters.eq("username", user);		

		return Collection.findOneAndDelete(filters);
	}
}

