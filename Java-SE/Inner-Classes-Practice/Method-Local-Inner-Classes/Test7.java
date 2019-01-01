class Test7 {
	int i = 10;
	static int j = 20;
	public void m1() {
		int k = 30;
		final int m = 40;
		class Inner7 {
			public void m2() {
				System.out.println(i);
				System.out.println(j);
				System.out.println(k);
				System.out.println(m);
			}
		} 
		new Inner7().m2();
	}
	public static void main(String arg[]) {
		new Test7().m1();
	}
}