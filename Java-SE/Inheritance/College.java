class University {
	void computerScience() {
		System.out.println("computerScience Bachler in 4 Years");
	}
	
	void physics() {
		System.out.println("physics Bachler in 3 Years");
	}
}

class College extends University {
	void computerScience() {
		super.computerScience();
		System.out.println("computerScience Bachler in 5 Years");
	}
	
	void physics() {
		System.out.println("physics Bachler in 4 Years");
	}
	
	public static void main(String arg[]) {
		College cg = new College();
		cg.computerScience();
		cg.physics();
	}
}