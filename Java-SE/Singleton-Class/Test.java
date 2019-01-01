class Demo {

	int num;
	static Demo d;
       	private	Demo(){	}
	static  Demo getDemo(){
		if(d==null){
			synchronized(Demo.class){
			if(d==null)
			d = new Demo();
			System.out.println("Instance created");
			}	
			}
		return d;
	}
}

class Test {

	public static void main(String arg[]){
	Thread t = new Thread(new Runnable(){
	public void run(){
		Demo d = Demo.getDemo();
	}
	});
	
	Thread t1 = new Thread(new Runnable(){
	public void run(){
		Demo d1 = Demo.getDemo();
	}
	});
	Thread t2 = new Thread(new Runnable(){
	public void run(){
		Demo d2 = Demo.getDemo();
	}
	});
	
	Thread t3 = new Thread(new Runnable(){
	public void run(){
		Demo d3 = Demo.getDemo();
	}
	});
	Thread t4 = new Thread(new Runnable(){
	public void run(){
		Demo d4 = Demo.getDemo();
	}
	});
	
	Thread t5 = new Thread(new Runnable(){
	public void run(){
		Demo d5 = Demo.getDemo();
	}
	});
	Thread t6 = new Thread(new Runnable(){
	public void run(){
		Demo d6 = Demo.getDemo();
	}
	});
	
	Thread t7 = new Thread(new Runnable(){
	public void run(){
		Demo d7 = Demo.getDemo();
	}
	});
		Thread t8 = new Thread(new Runnable(){
	public void run(){
		Demo d8 = Demo.getDemo();
	}
	});
	
	Thread t9 = new Thread(new Runnable(){
	public void run(){
		Demo d9 = Demo.getDemo();
	}
	});
	Thread t10 = new Thread(new Runnable(){
	public void run(){
		Demo d10 = Demo.getDemo();
	}
	});
	
	Thread t11 = new Thread(new Runnable(){
	public void run(){
		Demo d11 = Demo.getDemo();
	}
	});
	Thread t12 = new Thread(new Runnable(){
	public void run(){
		Demo d12 = Demo.getDemo();
	}
	});
	
	Thread t13 = new Thread(new Runnable(){
	public void run(){
		Demo d13 = Demo.getDemo();
	}
	});
	Thread t14 = new Thread(new Runnable(){
	public void run(){
		Demo d15 = Demo.getDemo();
	}
	});
	
	Thread t15 = new Thread(new Runnable(){
	public void run(){
		Demo d14 = Demo.getDemo();
	}
	});
	t.start();
	t1.start();	
	t2.start();
	t3.start();	
	
	t4.start();
	t5.start();	
	t6.start();
	t7.start();
	t8.start();
	t9.start();	
	t10.start();
	t11.start();	
	
	t12.start();
	t13.start();	
	t14.start();
	t15.start();

	}	
}