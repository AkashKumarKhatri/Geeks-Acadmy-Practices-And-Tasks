class Outer7 {
	class Inner7 {
		public void m1() {
			System.out.println("I am m1()");
		}
	}
	public static void main(String arg[]) {
		//Outer6.Inner6 i= new Outer6().new Inner6();
		new Outer7().new Inner7().m1(); 		// Third Approach to create inner class object
	}
}