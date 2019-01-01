class Outer {
	class Inner {
		public void m1() {
			System.out.println("Inner class method");
		}
	}
	public static void main(String args[]) {
		
		//Declaration Example: 1
		
		/* Outer out = new Outer();
		Outer.Inner i = out.new Inner();
		i.m1(); */
		
		
		
		
		//Declaration Example: 2
		
		/* Outer.Inner i = new Outer().new Inner();
		i.m1(); */
		
		
		
		
		//Declaration Example:3 
		
		new Outer().new Inner().m1();
	}
}