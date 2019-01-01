class OverloadDemo3 {
	void add() {
		System.out.println("hello Chachu");
	}
	int addd() {
		System.out.println("hello Chachu int");
		return 0;
	}
	public static void main(String arg[]) {
		OverloadDemo3 ob = new OverloadDemo3();
		ob.add();
	}
}