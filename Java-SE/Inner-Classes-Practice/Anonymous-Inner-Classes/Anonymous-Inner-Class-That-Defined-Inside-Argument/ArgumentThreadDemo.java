class ArgumentThreadDemo {
	public static void main(String arg[]) {
		/* Thread t = new Thread(new Runnable() {
			public void run() {
				for(int i=0; i<10; i++) {
					System.out.println("Child Thread");
				}
			}
		});
		t.start(); */
		
		//OR
		
		new Thread(new Runnable() {
			public void run() {
				for(int i=0; i<10; i++) {
					System.out.println("Child Thread");
				}
			}
		}).start();
		
		for(int i=0; i<10; i++) {
			System.out.println("Main Thread");
		}
	}
}