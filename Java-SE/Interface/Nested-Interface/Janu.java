class Nested {
	interface InterfaceInClass {
		void method();
	}
	void method2() {
		System.out.println("Hello Mugla");
	}
}
class Janu implements Nested.InterfaceInClass {
	public void method() {
		System.out.println("Hello Jigree");
	}
	public static void main(String arg[]) {
		Nested.InterfaceInClass ob  = new Janu();
		ob.method();
		Nested ob2 = new Nested();
		ob2.method2();
	}
}