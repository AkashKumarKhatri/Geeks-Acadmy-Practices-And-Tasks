class Outer5 {
	class Inner5 {
		public void m1() {
			System.out.println("I am m1()");
		}
	}
	public static void main(String arg[]) {
		Outer5 o = new Outer5();
		Outer5.Inner5 i = o.new Inner5();		// First Approach to create inner class object
		i.m1();
	}
}