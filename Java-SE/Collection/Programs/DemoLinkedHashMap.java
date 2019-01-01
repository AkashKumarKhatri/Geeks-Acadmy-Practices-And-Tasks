package programs;

import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

public class DemoLinkedHashMap 
{
	public static void main(String []args)
	{
		HashMap<Integer,String> hashMap = new HashMap<>();
		hashMap.put(11,"Sadaquat");
		hashMap.put(1,"Ali");
		hashMap.put(3,"Hussnain");
		hashMap.put(2, "Kamran");
		for(Map.Entry hash : hashMap.entrySet())
		{
			System.out.println(hash.getKey() +"   "+hash.getValue());
		}
		
		
		
		System.out.println("_______Linked Hash Map____________");
		LinkedHashMap<Integer,String> hashMap2 = new LinkedHashMap<>();
		hashMap2.put(11,"Sadaquat");
		hashMap2.put(1,"Ali");
		hashMap2.put(3,"Hussnain");
		hashMap2.put(2, "Kamran");
		Set set=hashMap2.entrySet();
		Iterator itr2=set.iterator();
		while(itr2.hasNext())
		{
				Map.Entry<Integer, String> map=(Map.Entry)itr2.next();
				System.out.println(map.getKey()+"  "+map.getValue());
		}
		
		
		
		
		
		System.out.println("_______Tree Map____________");
		TreeMap<String, String> hashMap3 = new TreeMap<>();
		hashMap3.put("11","Sadaquat");
		hashMap3.put("1","Ali");
		hashMap3.put("3","Hussnain");
		hashMap3.put("abc", "Kamran");
		Set set1=hashMap3.entrySet();
		Iterator itr3=set1.iterator();
		
		while(itr3.hasNext())
		{
				Map.Entry<Integer, String> map=(Map.Entry)itr3.next();
				System.out.println(map.getKey()+"  "+map.getValue());
		}
	
		
		
	}
}
