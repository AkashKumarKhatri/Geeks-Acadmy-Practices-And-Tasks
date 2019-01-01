class Outer8 {
	class Inner8 {
		public void m1() {
			System.out.println("Inner class method");
		}
	}
	public void m2() {
		Inner8 i = new Inner8();
		i.m1();
	}	
	public static void main(String arg[]) {
		Outer8 o = new Outer8();
		o.m2();
	}
}