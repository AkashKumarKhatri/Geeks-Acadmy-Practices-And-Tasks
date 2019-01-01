package programs;

import java.util.ArrayList;

public class DemoArrayList {

	public static void main(String args[])
	{
		ArrayList listOf  = new ArrayList();
		listOf.add("ROheet");
		listOf.add(1);
		listOf.add(5.4);
		listOf.add("ALi");
		ArrayList listOf2  = new ArrayList();
		listOf2.add("ALi");
		listOf2.add("ROheet");
		
		/*for(Object obj : listOf)
		{
			System.out.println(obj);
			
		}*/
		for(int i=0 ; i< listOf.size() ; i ++)
		{
			System.out.println(listOf.get(i));
			
		}
		System.out.println(listOf.get(3));
		//System.out.println(listOf.remove(2));
		System.out.println(listOf);
		System.out.println(listOf.contains("ALi"));
		System.out.println(listOf.indexOf("ALi"));
		//listOf.clear();
		System.out.println(listOf);
		listOf.removeAll(listOf2);
		System.out.println(listOf);
	}
	
}
