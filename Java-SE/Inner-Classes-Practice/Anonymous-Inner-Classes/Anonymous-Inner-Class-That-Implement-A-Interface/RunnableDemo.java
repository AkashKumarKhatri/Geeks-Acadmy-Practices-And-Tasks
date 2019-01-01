class RunnableDemo {
	public static void main(String arg[]) {
		Runnable r = new Runnable() {
			public void run() {
				for(int i=0; i<10; i++) {
					System.out.println("Child Thread");
				}
			}
		};
		Thread t = new Thread(r);
		t.start();
		for(int i=0; i<10; i++) {
			System.out.println("Main Thread");
		}
	}
}