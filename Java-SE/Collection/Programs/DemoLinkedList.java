package programs;

import java.util.ArrayList;
import java.util.LinkedList;

public class DemoLinkedList {

public static void main(String a[])
{
	LinkedList lst= new LinkedList();
	lst.add("Sadaquat");
	lst.add("Amar");
	lst.add(22);
	System.out.println(lst.size());
	lst.remove();
	LinkedList arrayList= new LinkedList();
	arrayList.add("RUk");
	arrayList.add("Pakistan");
	lst.addAll(0,arrayList);
	System.out.println(lst);
	lst.addFirst("BhanwarLal");
	lst.addLast("Nooh");
	System.out.println(lst);
	lst.add(1, "Talha");
	System.out.println(lst);
	lst.remove();
	System.out.println(lst);
	lst.remove(0);
	System.out.println(lst);
	LinkedList ll= new LinkedList();
	ll.add("Talha");
	ll.add("Nooh");
	lst.removeAll(ll);
	System.out.println(lst);
	System.out.println(lst.getFirst()+"  "+lst.getLast());
	System.out.println(lst.isEmpty());
	System.out.println(ll);
	
	ll.add("Talha");
	ll.add("SId");
	ll.add("Talha");
	ll.removeFirstOccurrence("Talha");
	System.out.println(ll);
	
	
}
	
}
