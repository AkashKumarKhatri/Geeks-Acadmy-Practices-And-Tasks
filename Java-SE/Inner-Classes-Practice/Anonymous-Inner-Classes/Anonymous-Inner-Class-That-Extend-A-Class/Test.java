class PopCorn {
	public void test() {
		System.out.println("Salty");
	}
}
class Test {
	public static void main(String arg[]) {
		PopCorn p = new PopCorn() {
			public void test() {
				System.out.println("Spicy");
			}
		};
		p.test();
		
		PopCorn p1 = new PopCorn();
		p1.test();
		
		PopCorn p3 = new PopCorn() {
			public void test() {
				System.out.println("Sweet");
			}
		};
		p3.test();
	}
}