class ParentClass {
	int a = 5;
	void show() {
		System.out.println("Method of Parent Class");
	}
}

class ChildClass extends ParentClass {
	int a = 10;
	void show() {
		super.show();
		System.out.println(super.a);
		System.out.println("Method Of Class");
	}
}

class Main {
	public static void main(String arg[]) {
		ChildClass cc = new ChildClass();
		cc.show();
	}
}