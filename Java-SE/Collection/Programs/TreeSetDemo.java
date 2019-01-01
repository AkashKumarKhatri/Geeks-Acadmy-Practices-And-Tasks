package programs;

import java.util.TreeSet;

public class TreeSetDemo {
	public static void main(String args[])
	{
		TreeSet treeSet = new TreeSet();
		treeSet.add(4.00);
		treeSet.add(5.34);
		
		for(Object o : treeSet)
		{
			System.out.println(o);
		}
		
		
		
	}
	
	
	
}
