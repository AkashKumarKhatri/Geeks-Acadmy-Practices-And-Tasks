class Intr1 {
	static int i;
	
	/* Intr1() {
		i = 5;
	} */
}
class Demo extends Intr1 {
		
		Demo() {
			i = 8;
		} 
	public static void main(String arg[]) {
		
		Demo ob = new Demo();
		System.out.println(ob.i);
	}
}