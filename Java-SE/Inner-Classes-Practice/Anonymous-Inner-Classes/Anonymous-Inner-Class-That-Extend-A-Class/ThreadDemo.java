class ThreadDemo {
	public static void main(String arg[]) {
		Thread t = new Thread() {
			public void run() {
				for(int i=0; i<10; i++) {
					System.out.println("Child Thread");
				}
			}
		};
		t.start();
		for(int i = 0; i<10; i++) {
			System.out.println("Main Thread");
		}
	}
}