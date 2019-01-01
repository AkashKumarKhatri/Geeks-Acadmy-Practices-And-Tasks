class FinalDemo {
	final static int COUNT;
	
	static {
		COUNT = 100;
	}
	public static void main(String arg[]) {
		FinalDemo ob = new FinalDemo();
		//ob.COUNT=10;
		System.out.println(ob.COUNT);
	}
}