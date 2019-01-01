import java.util.*;
class WeakHashMapDemo {
	public static void main(String arg[]) throws Exception {
		WeakHashMap hm = new WeakHashMap();
		Temp t = new Temp();
		hm.put(t,"akash");
		System.out.println(hm);
		t = null;
		System.gc();
		Thread.sleep(5000);
		System.out.println(hm);
	}
}

class Temp {
	public String toString() {
		return "temp";
	}
	public void finalize() {
		System.out.println("Finalized method Called");
	}
}