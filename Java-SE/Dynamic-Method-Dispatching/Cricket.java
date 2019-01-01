/* class Game {
	public void type() {  
		System.out.println("Indoor & outdoor"); 
	}
}

class Cricket extends Game {
	public void type() {  
		System.out.println("outdoor game"); 
	}

	public static void main(String[] args) {
	   Game gm = new Game();
	   Cricket ck = new Cricket();
	   gm.type();
	   ck.type();
	   gm=ck;      //GM REFERS TO CRICKET OBJECT
	   gm.type();  //calls Cricket's version of type
	}
} */


class Game {
	void type() {
		System.out.println("Indoor & Outdoor");
	}
}
class Cricket extends Game {
	void type() {
		System.out.println("Indoor Game");
	}
	public static void main(String arg []) {
		Game gm = new Cricket();				//This is called Upcasting
		gm.type(); 				
		
		/* Cricket ck = new Game();				//This is incompatible types
		ck.type(); */
		
	}
}