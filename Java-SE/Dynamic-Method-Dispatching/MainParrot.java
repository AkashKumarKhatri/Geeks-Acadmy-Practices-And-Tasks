class Parrot {
	int beek = 1;
	int a = 12;
	
	void details() {
		System.out.println("I am Parrot");
	}
	void shadi() {
		System.out.println("Parrot ki shadi");
	}
	void show() {
		System.out.println("Parrot beek "+beek);
	}
}
class ChildParrot extends Parrot {
	int c = 12;
	int beek = 2;
	void details() {
		System.out.println("I am ChildParrot");
	}
	void shadi2() {
		System.out.println("Child Parrot ki Shadi");
	}
	void show() {
		//System.out.println(super.beek);
		System.out.println("Child beek "+beek);
		super.beek = 8;
	}
}
class MainParrot {
	    public static final void main(String arg[]) {
		
		Parrot p = new ChildParrot();
		p.details();
		p.show();
		//p.beek = 5;
		p.show();
	}
}