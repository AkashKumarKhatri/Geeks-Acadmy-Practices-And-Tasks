
// Only one time object create for every object 

/*class Student {
	String name = "Sadaqat";
	static Student s = new Student();		// It is called Eager Singleton class
	private Student(){}
	public static Student getStudent(){
		return s;
	}
}
class Main {
	public static void main(String arg[]){
		Student s = Student.getStudent();
		System.out.println(s.name);
	}
}*/





















/*class Student {
	String name = "Sadaqat";
	private Student(){}
	public static Student getStudent(){
		Student s = new Student();				//This class create new object every time when its method call
		return s;
	}
}
class Main {
	public static void main(String arg[]){
		Student s = Student.getStudent();
		System.out.println(s.name);
	}
}*/



/* class Worker {
	String name = "Aakash";
	String department = "CW";
	private Worker() {}
	public static Worker getWorker(){
		return new Worker();			//Anomoyous class 
	}
}
class TestWorker {
	public static void main(String arg[]){
		Worker w = Worker.getWorker();
		System.out.println(w.department);
		w.name = "Sadaqat";
		System.out.println(w.name);
		
		Worker w1 = Worker.getWorker();
		System.out.println(w1.department);
		System.out.println(w1.name);	
	}	
} */





















/* class Worker {
	String name = "Aakash";
	String department = "CW";
	static Worker w;
	private Worker() {}
	public static Worker getWorker(){
		if(w==null) {
			w = new Worker();			// It is called Lazy Singleton class
		}	
			return w;
		
	}
}
class TestWorker {
	public static void main(String arg[]){
		Worker w = Worker.getWorker();
		System.out.println(w.department);
		w.name = "Sadaqat";
		System.out.println(w.name);
		
		Worker w1 = Worker.getWorker();
		System.out.println(w1.department);
		System.out.println(w1.name);	
	}	
} */






















/* class Worker {
	String name = "Aakash";
	String department = "CW";
	static Worker w;
	private Worker() {}
	public static Worker getWorker(){
		if(w==null) {
			w = new Worker();			// It is called Lazy Singleton class but still using Thread it create more than one objects and concept of singleton class 
										// are distroy				
		}	
			return w;
		
	}
}
class TestWorker {
	public static void main(String arg[]){
		Thread t = new Thread(new Runnable(){
			public void run() {
				Worker w = Worker.getWorker();
				System.out.println(w.department);
				w.name = "Sadaqat";
				System.out.println(w.name);
			}	
		});
		
		Thread t1 = new Thread(new Runnable(){
			public void run() {	
				Worker w1 = Worker.getWorker();
				System.out.println(w1.department);
				System.out.println(w1.name);
			}	
		});
		
		t.start();
		t1.start();
	}	
} */



















 /* class Worker {
	String name = "Aakash";
	String department = "CW";
	static Worker w;
	private Worker() {}
	public static synchronized Worker getWorker(){
		if(w==null) {
			w = new Worker();			// It is called Lazy Singleton class but still using Thread it create than one objects and concept of singleton class 
										// are distroy	(Note: Using synchronized keyword with getWorker method we remove this problem)			
		}	
			return w;
		
	}
}
class TestWorker {
	public static void main(String arg[]){
		Thread t = new Thread(new Runnable(){
			public void run() {
				Worker w = Worker.getWorker();
				System.out.println(w.department);
				w.name = "Sadaqat";
				System.out.println(w.name);
			}	
		});
		
		Thread t1 = new Thread(new Runnable(){
			public void run() {	
				Worker w1 = Worker.getWorker();
				System.out.println(w1.department);
				System.out.println(w1.name);
			}	
		});
		
		t.start();
		t1.start();
	}	
} */


















/* class Worker {
	String name = "Aakash";
	String department = "CW";
	static Worker w;
	private Worker() {}
	public static Worker getWorker(){
		if(w==null) {
			synchronized(Worker.class) {		// It is called as Double Checked Locking
				if(w==null)
					w = new Worker();	// It is called Lazy Singleton class but still using Thread it create than one objects and concept of singleton class 
			}							// are distroy	(Note: Using synchronized keyword we remove this problem)			
		}	
			return w;
		
	}
}
class TestWorker {
	public static void main(String arg[]){
		Thread t = new Thread(new Runnable(){
			public void run() {
				Worker w = Worker.getWorker();
				System.out.println(w.department);
				w.name = "Sadaqat";
				System.out.println(w.name);
			}	
		});
		
		Thread t1 = new Thread(new Runnable(){
			public void run() {	
				Worker w1 = Worker.getWorker();
				System.out.println(w1.department);
				System.out.println(w1.name);
			}	
		});
		
		t.start();
		t1.start();
	}	
} */ 

























// It is only in jdk 1.5 and above version not belove, at this time it is the best way to Singleton Design Pattern 

enum Worker {			//Special type of class
	INSTANCE; 			// INSTANCE is Exectly work as (private Worker(){})
	int no;
	
	public void show() {
		System.out.println(no);
	}
}

class TestWorker {
	public  static void main(String arg[]) {
		Worker w = Worker.INSTANCE;
		w.no = 5;
		w.show();
		
		Worker w2 = Worker.INSTANCE;
		w2.no = 6;
		w.show();
	}
}














