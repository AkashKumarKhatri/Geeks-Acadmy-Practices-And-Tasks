class Outer10 {
	int x = 10;
	static int y = 90;
	class Inner10 {
		public void m1() {
			System.out.println(x);
			System.out.println(y);
		}
	}
	public static void main(String args[]) {
		new Outer10().new Inner10().m1();
	}
}