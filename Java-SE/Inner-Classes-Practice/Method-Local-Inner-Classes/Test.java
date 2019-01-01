class Test {
	public void m1(){
		class Inner {
			public void m2(int x, int y) {
				System.out.println("Sum is : "+(x+y));
			}
		}
		Inner i = new Inner();
		i.m2(50,100);
		System.out.println("First Time");
		i.m2(100,200);
		System.out.println("Second Time");
		i.m2(50,200);
		System.out.println("Third Time");
		i.m2(100,500);
	}
	public static void main(String arg[]) {
		new Test().m1();
	}
}