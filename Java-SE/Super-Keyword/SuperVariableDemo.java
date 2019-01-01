class Super {
	int num = 110;	
}

class SuperVariableDemo extends Super {
	int num = 105;
	void disp() {
		
		System.out.println(num);
		System.out.println(super.num);
	}
	
	
	public static void main(String arg[]) {
		SuperVariableDemo obj = new SuperVariableDemo();
		obj.disp();
	}	
}