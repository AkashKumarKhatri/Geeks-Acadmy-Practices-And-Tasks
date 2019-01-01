class Outer4 {
	class Inner4 {
		public void m1() {
			System.out.println("I am m1()");
		}
	}
	public static void main(String arg[]) {
		Inner4 i = new Inner4();
		i.m1();
	}
}
		// Error: non-static variable this cannot be referenced from a static context