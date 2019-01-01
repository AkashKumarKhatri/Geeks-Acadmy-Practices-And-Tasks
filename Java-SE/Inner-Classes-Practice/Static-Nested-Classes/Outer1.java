class Outer1 {
	static class Nested1 {
		public void m1() {
			System.out.println("static Nested1 class method");
		}
	}
	public static void main(String arg[]) {
		Outer1.Nested1 n = new Outer1.Nested1();
		n.m1();
	}
}