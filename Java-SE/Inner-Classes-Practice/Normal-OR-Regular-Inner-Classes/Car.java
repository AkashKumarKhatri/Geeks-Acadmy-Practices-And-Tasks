class Car {
	private int price;
	void move() {
		Engine eng = new Engine();
		eng.start();
		System.out.println(eng.hp);
	}
	
	class Engine {
		
		private int hp;
		private int capacity;
		
		public void start() {
			System.out.println("Started");
		}
		public void stop() {
				price = 100;
				System.out.println(price);
		}
		public void run() {
			
		}
	}
	class MusicSystem {
		
	}
	public static void main(String arg[]) {
		Car ob = new Car();
		Engine ob1 = ob.new Engine();
		ob1.start();
		
		Engine ob2 = new Car().new Engine();
		ob2.start();
		ob2.stop();
		ob.move();
		//System.out.println(ob2.hp);
	}
}