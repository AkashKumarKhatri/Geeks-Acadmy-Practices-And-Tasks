class FinalDemo2 {
	int a;
	void disp() {
		final int COUNT;
		COUNT = 16;
		System.out.println("COUNT = "+COUNT);
	//	COUNT = 20;
		System.out.println("COUNT = "+a);
	}
	public static void main(String arg[]) {
		FinalDemo2 ob = new FinalDemo2();
		ob.disp();
	}
}