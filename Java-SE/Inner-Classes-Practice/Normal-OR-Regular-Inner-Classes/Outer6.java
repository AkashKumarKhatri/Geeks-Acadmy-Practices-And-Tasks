class Outer6 {
	class Inner6 {
		public void m1() {
			System.out.println("I am m1()");
		}
	}
	public static void main(String arg[]) {
		//Outer5 o = new Outer5();
		Outer6.Inner6 i = new Outer6().new Inner6(); 		// Second Approach to create inner class object
		i.m1();
	}
}