class MainOverloadTest {
	public static void main() {
		System.out.println("Hello null main()");
	}
	public static void main(int a, int b) {
		System.out.println("Hello 2 arg main()"+(a+b));
	}
	public static void main(int a, int b, int c) {
		System.out.println("Hello 3 arg main()"+(a+b+c));
	}
	/* public static void main(String arg[]) {
		MainOverloadTest ob = new MainOverloadTest();
		ob.main(2,8);
	} */
	
	/* public static void main(String arg[]) {
		MainOverloadTest ob = new MainOverloadTest();
		ob.main(2,8);
	} */
    public static void main(String[] args) {
        for(int i = 0; i < args.length; i++) {
            System.out.println(args[i]);
        }
    }
}
