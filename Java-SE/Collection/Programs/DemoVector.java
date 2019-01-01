package programs;

import java.util.Enumeration;
import java.util.Vector;

public class DemoVector {

	public static void main(String args[])
	{
		Vector v = new Vector();
		System.out.println(v.capacity());
		System.out.println(v.size());
		v.addElement("Sadaquat");
		v.addElement("Ali");
	
		System.out.println(v.capacity());
		
		Enumeration e = v.elements();
		while(e.hasMoreElements())
		{
			System.out.println(e.nextElement());
		}
		
		
	}
	
}
