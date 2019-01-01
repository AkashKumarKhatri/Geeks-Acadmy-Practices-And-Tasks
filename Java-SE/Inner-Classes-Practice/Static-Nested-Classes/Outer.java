class Outer {
	static class Nested {
		public void m1() {
			System.out.println("static Nested class method"); 
		}
	}
	public static void main(String arg[]) {
		Nested n = new Nested();
		n.m1();
	}
}