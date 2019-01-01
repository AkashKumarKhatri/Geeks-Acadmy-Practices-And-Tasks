class Test6 {
	public void m1() {
		int x = 10;	
		class Inner6 {
			public void m2() {
				System.out.println(x); 
			}
		}
		new Inner6().m2();
	}
	public static void main(String arg[]) {
		new Test6().m1();
	}
}