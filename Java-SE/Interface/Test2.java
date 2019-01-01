interface A {
	void a();
}
interface B {
	void b();
}
class Abc implements A,B {
	public void a() {
		System.out.println("a()");
	}
	public void b() {
		System.out.println("b()");
	}
}
class Display {
	static void show(Abc ob) {
		ob.a();
		ob.b();
	}
	static void show(A a) {
		a.a();
	}
	static void show(B b) {
		b.b();
	}
}
class Test2 {
	public static void main(String arg[]) {
		Abc ob = new Abc();
		//Display.show((A)ob);
		//Display.show((B)ob);
		Display.show(ob);
	}
}