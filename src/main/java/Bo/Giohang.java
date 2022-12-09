package Bo;

import java.lang.reflect.Array;
import java.util.ArrayList;

import bean.giohangbean;

public class Giohang {
	   public ArrayList<giohangbean> ds= new ArrayList<giohangbean>();
	   
	   public ArrayList<giohangbean> getds(){
		   return ds;
	   }
	   
	   
	    public void Them(String masach, String tensach, long soluong, long gia,  String anh) {
	    	if (masach!=null) 
	    			{		
	    		for(giohangbean g: ds)
	    			if(g.getMasach().equals(masach)) 
	    			{
	    				System.out.println("Nnó vô đay nè");
	    				g.setSoluong(soluong+ g.getSoluong());
	    				return;
	    			}
	    		ds.add( new giohangbean(masach, tensach, soluong, gia, anh) );
	    			}
	    }
	    
	    public long TongTien() {
	    	long s=0;
	    	  for(giohangbean g: ds)
	    		  s=s+g.getThanhtien();
	    	  return s;
	    }
	    public void remove(String masach ) {
	    	if (masach!=null) 
	    	{		for(giohangbean g: ds)
	    			if(g.getMasach().equals(masach)) {
	    				ds.remove(g);
	    				return;
	    			}
	    	}
		}
	    public void Up(String masach, long soluong ) {
	    	if (masach!=null) 
	    	{		for(giohangbean g: ds)
	    			if(g.getMasach().equals(masach)) {
	    				g.setSoluong(soluong);
	    				return;
	    			}
	    	}
	    }
	  
	}
