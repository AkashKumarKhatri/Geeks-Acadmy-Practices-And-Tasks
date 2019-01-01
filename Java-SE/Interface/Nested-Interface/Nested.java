interface InterfaceA {
	void method1();
		interface InterfaceB {
			void method2();
		}
}
class Nested implements InterfaceA.InterfaceB {
	public void method2() {
		System.out.println("METHOD 2");
	}
	public void method1() {
		System.out.println("METHOD 1");
	}
	public static void main(String arg[]){
		InterfaceA.InterfaceB ob = new Nested();
		ob.method2();
		Nested ob1 = new Nested();
		ob1.method1();
	}
}