package programs;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class HashMapDemo {
	
	public static void main(String []args)
	{
		HashMap hashMap= new HashMap();
		hashMap.put("A","Sadaquat");
		hashMap.put(4,"Ahsan");
		hashMap.put(2,"Amjad");
		hashMap.put(3,"Hassan");
		hashMap.put(4,"Nooh");
		hashMap.put(4,"Ashokh");
		hashMap.remove(3);
		
		System.out.println(hashMap);
		System.out.println("4==" +hashMap.get(4));
		Set set=hashMap.entrySet();  
		Iterator itr=set.iterator(); 
		while(itr.hasNext())
		{
			Map.Entry	map	=(Map.Entry)itr.next();
			System.out.println(map.getKey());
			System.out.println(map.getValue());
			
		}
	}

}
