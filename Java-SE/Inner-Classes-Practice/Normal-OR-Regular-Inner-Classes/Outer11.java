class Outer11 {
	int x = 10;
	class Inner11 {
		int x = 20;
		public void m1() {
			int x = 100;
			System.out.println(x); 					// 100
			System.out.println(this.x);				// 20
			System.out.println(Outer11.this.x);		// 10
		}
	}
	public static void main(String arg[]) {
		new Outer11().new Inner11().m1();
	}
}