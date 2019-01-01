class DemoStatic {
	static String name = "Asif";
	String cast = "Ruk";
	
	public static void main(String arg[]) {
		DemoStatic d = new DemoStatic();
		d.name = "Salman";
		d.cast = "Sheikh";
		System.out.println(d.cast);			//sheikh
		DemoStatic d2 = new DemoStatic();
		System.out.println(d2.name);		//salman
		System.out.println(d2.cast);	//ruk
		
		System.out.println(DemoStatic.name);	//salman
	}
}