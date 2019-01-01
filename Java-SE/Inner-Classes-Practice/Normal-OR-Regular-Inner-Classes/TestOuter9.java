class Outer9 {
	class Inner9 {
		public void m1() {
			System.out.println("Inner class method");
		}
	}
}
class TestOuter9 {
	public static void main(String arg []) {
		Outer9 o = new Outer9();
		Outer9.Inner9 i = o.new Inner9();
		i.m1();
	}
	
}