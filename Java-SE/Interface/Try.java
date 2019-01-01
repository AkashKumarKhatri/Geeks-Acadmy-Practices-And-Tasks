interface Prc1 {
	void aab();
}
interface Prc2 extends Prc1{
	int aaa();
}
class Try implements Prc2 {
	public void aab() {
		System.out.println("aaaaaaa");
	}
	public int aaa() {
		System.out.println("int aaaaaaaaaa");
		return 0;
	}
	public static void main(String arg[]) {
		Try ob = new Try();
		ob.aaa();
	}
}