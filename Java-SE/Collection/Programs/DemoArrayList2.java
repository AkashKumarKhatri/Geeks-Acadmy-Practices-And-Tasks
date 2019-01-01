package programs;

import java.util.ArrayList;
import java.util.ListIterator;

public class DemoArrayList2 {

public static void main(String args[])
{
	
ArrayList<String> list= new ArrayList<String>();
list.add("Sasdf");
list.add("Ruk");
list.add("AKram");
/*for(String name : list)
{
	System.out.println(name);

}*/
ListIterator itr = list.listIterator();
while(itr.hasNext())
{
	System.out.println(itr.next());
	if(itr.next().equals("Ruk"))
	{
		break;
	}
}
while(itr.hasPrevious())
{
	System.out.println(itr.previous());

}







}
	
}
