class Test2 {
	int x = 10;
	static int y = 20;
	public void m1() {
		class Inner2 {
			public void m2() {
				System.out.println(x);
				System.out.println(y);
			}
		}
		new Inner2().m2();
	}
	public static void main(String arg[]) {
		new Test2().m1();
	}
}