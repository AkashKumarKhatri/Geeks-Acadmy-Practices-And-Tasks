import java.util.*;
class Test {
	public static void main(String arg[]) {
		Map hm = new HashMap();
		hm.put(11,"Akash Khatri");
		hm.put(18,"Aashique Ali");
		hm.put(04,"Jabar Tunio");
		System.out.println(hm);
		System.out.print(hm.put(11,"Kumar"));
		System.out.println(hm);
		Set s = hm.keySet();
		System.out.println(s);
		Collection c = hm.values();
		System.out.println(c);
		Set s1 = hm.entrySet();
		System.out.println(s1);
		Iterator itr = s1.iterator();
		while(itr.hasNext()) {
			Map.Entry m1 = (Map.Entry)itr.next();
			System.out.println(m1.getKey()+" ....."+m1.getValue());
			if(m1.getKey().equals("18")) {
				m1.setValue("Bari");
			}
		}
	}
}