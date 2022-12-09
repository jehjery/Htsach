package connectDB;

import com.mongodb.MongoException;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

import org.bson.Document;
import com.mongodb.client.MongoClient;

public class connectDB {
	private static MongoDatabase _instance;

	//Hàm kết nối
	private static MongoDatabase getConnection() {
		//đường dẫn database 
    	String uri = "mongodb+srv://admin:123@roku.chgqbhg.mongodb.net/?retryWrites=true&w=majority";
    	
//		String uri = "mongodb://localhost:27017";
    	
		try {
			MongoClient mongoClient = MongoClients.create(uri);
			
			//kiểm tra kết nối
			if (mongoClient != null) {
				System.out.println(uri);
				System.out.println("Connected");
				return mongoClient.getDatabase("dbBook");
			}
		} catch (MongoException e) {
			System.err.println("An error occurred while attempting to run a command: " + e);
		}
		return null;
	}

	public static MongoDatabase getInstance() {
		if (_instance == null) {
			_instance = getConnection();
		}
		return _instance;
	}
}


	
