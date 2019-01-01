import java.util.*;
class IdentityHashMapDemo {
	public static void main(String arg[]) {
		IdentityHashMap hm = new IdentityHashMap();
		String str1 = new String("akash");
		String str2 = new String("akash");
		hm.put(str1, 200);
		hm.put(str2,800);							
		hm.put("deepak",400);			
		System.out.println(hm);
	}
}
