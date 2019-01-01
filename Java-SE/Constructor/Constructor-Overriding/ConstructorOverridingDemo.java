class ConstructorOverridingDemo {
	
	ConstructorOverridingDemo() {
		System.out.println("First class");
	}
}
class ConstructorOverridingDemo extends ConstructorOverridingDemo {
		ConstructorOverridingDemo() {
			System.out.println("Second class");
		}
	public static void main(String arg[]) {
		ConstructorOverridingDemo cod = new ConstructorOverridingDemo();
	}		
}