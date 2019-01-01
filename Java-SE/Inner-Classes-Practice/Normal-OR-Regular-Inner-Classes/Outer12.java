class Outer12 {
	class Inner12 {
		class InnerInsideInner {
			public void m1() {
				System.out.println("Inner Most class method");
			}
		}
	}
	public static void main(String arg[]) {
		new Outer12().new Inner12().new InnerInsideInner().m1();
	}
}