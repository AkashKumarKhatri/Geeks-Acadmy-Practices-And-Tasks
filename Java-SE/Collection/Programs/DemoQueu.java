package programs;

import java.util.LinkedList;
import java.util.Queue;

public class DemoQueu {

	public static void main(String args[])
	{
		Queue queue =new LinkedList<>();
		queue.add("Sunny");
		queue.add("Kashif");
		queue.add("Bhawar");
		
		System.out.println("Peek "+queue.peek());
		queue.add("Khatri");
		System.out.println(queue);
		System.out.println("POP  "+queue.poll());
		System.out.println(queue);
		
		queue.remove();
		System.out.println(queue);
			
	}
	
}
