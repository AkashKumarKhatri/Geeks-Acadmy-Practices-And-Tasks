class ParentClass {
	int num;
	String name;
	
	ParentClass() {
		System.out.println("I am Parent class Constructer");
	} 
	ParentClass(int num, String name) {
		this.name = name;
		this.num = num;
		System.out.println("Parameterized Constructor");
	}
	void disp() {
		System.out.println("Name is "+name+" Num is "+num);
	}
	
}

class ChildClass extends ParentClass {
	
	ChildClass() {
		System.out.println("I am Child class Constructer");
	}
	 ChildClass(int num,String name) {
		super(num,name);
	}	 
	public static void main(String arg[]) {
		ChildClass cl = new ChildClass();
		cl.disp();
		ChildClass cl1 = new ChildClass(10,"Akash");
		cl1.disp();
	
	}
}