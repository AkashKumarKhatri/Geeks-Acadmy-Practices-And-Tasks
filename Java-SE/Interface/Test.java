interface USindh {
	void BBA();
	void MBA();
	
}
class IMSA implements USindh {
	
	IMSA(){
		System.out.println("Hello Worold");
	}
	public void BBA() {
		System.out.println("BBA IMSA");
	}
	public void MBA() {
		System.out.println("MBA IMSA");
	}
}

class CMS implements USindh {
	public void BBA() {
		System.out.println("BBA CMS");
	}
	public void MBA() {
		System.out.println("MBA CMS");
	}
}
class Display {
	static void show(USindh u) {
		u.BBA();
		u.MBA();
	}
}
class Test {
	public static void main(String arg[]) {
		IMSA imsa  = new IMSA();
		CMS cms = new CMS();
		Display.show(imsa);
		Display.show(cms);
	}
}