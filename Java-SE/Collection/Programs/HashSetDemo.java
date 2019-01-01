package programs;

import java.util.HashSet;
import java.util.Iterator;

public class HashSetDemo {
	public static void main(String args[])
	{
		HashSet<String> hashSet= new HashSet<String>();
		hashSet.add("Akram");
		hashSet.add("Ali");
		hashSet.add("Ruk");
		hashSet.add("Ali");
		System.out.println(hashSet);
		Iterator<String> itr=hashSet.iterator();
		while(itr.hasNext())
		{
			System.out.println(itr.next());
			
		}
	}
}
