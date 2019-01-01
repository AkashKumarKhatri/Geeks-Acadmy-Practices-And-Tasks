class Test5 {
	public void m1() {
		static int x = 10;		//---->>> Error: illegal start of expression
		class Inner5 {
			public void m2() {
				System.out.println(x); 
			}
		}
		new Inner5().m2();
	}
	public static void main(String arg[]) {
		new Test5().m1();
	}
}

	 /* You can not declare varibale as static inside a method. Inside method all variables are local 
	    variables that has no existance outside this method thats why they cann't be static. */