class Box {
	
	int feet, inch;
	
	Box(int a, int b) {
		feet = a;
		inch = b;
	}
	void add(Box ob) {
		System.out.println(feet+ob.feet);
		System.out.println(inch+ob.inch);
	}
}
class Test {
	public static void main(String arg[]) {
		Box ob1 = new Box(10,5);
		Box ob2 = new Box(180,50);
		ob1.add(ob2);
		//ob2.add(ob2);
		//ob1.add(ob1);
	}
}