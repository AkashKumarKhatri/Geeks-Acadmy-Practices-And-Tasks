package programs;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class DemoHashTable {

	public static void main(String args[])
	{
		Hashtable<String, Double> hashtable= new Hashtable<>();
		hashtable.put("Sunny", new Double(89.9));
		hashtable.put("Salam",new Double(10));
		hashtable.put("Roheet", new Double(1.1));
		
		Enumeration enumeration=hashtable.keys();
		while(enumeration.hasMoreElements())
		{
			String key=(String)enumeration.nextElement();
			System.out.println("KEY=  "+key+"VALUE= "+hashtable.get(key));
		}
		Set s=hashtable.entrySet();
		Iterator itr=s.iterator();
		while(itr.hasNext())
		{
				Map.Entry entry=(Map.Entry) itr.next();
				System.out.println(entry.getKey()+"   "+entry.getValue());
		}
		
	}
	
	
}
