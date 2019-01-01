package programs;

import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.ListIterator;

public class DemoLinkedHashSet {
	
public static void main(String args[])
{
LinkedHashSet  linkedHashSet= new LinkedHashSet();
linkedHashSet.add("asif");
linkedHashSet.add("ALi");
linkedHashSet.add(23);
linkedHashSet.add("Sad");
linkedHashSet.add(3.12);
linkedHashSet.add(2.13);


Iterator itr= linkedHashSet.iterator(); 
while(itr.hasNext())
{
System.out.println(itr.next());	

}


}

}
