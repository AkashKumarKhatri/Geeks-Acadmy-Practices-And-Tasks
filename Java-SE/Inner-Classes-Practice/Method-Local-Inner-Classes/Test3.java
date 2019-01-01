class Test3 {
	int x = 10;
	static int y = 20;
	public static void m1() {
		class Inner3 {
			public void m2() {
				System.out.println(x); //--------->>>>>> Error: non-static variable x cannot be referenced from a static context
				System.out.println(y);
			}
		}
		new Inner3().m2();
	}
	public static void main(String arg[]) {
		new Test3().m1();
	}
}