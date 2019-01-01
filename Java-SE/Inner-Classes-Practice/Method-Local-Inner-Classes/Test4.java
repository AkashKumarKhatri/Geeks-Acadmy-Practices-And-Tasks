class Test4 {
	final int x = 10;
	static int y = 20;
	public static void m1() {
		class Inner4 {
			public void m2() {
				System.out.println(x); //------->>>>>> Error: non-static variable x cannot be referenced from a static context
				System.out.println(y);
			}
		}
		new Inner4().m2();
	}
	public static void main(String arg[]) {
		new Test4().m1();
	}
}