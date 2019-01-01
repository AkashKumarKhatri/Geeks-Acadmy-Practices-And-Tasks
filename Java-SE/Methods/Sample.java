class Sample{
 
	public int add() {
		int a=40;
		int b=50;
		int c=a+b;
		return c;
	}

	public static void main(String args[]) { 
 
		Sample obj= new Sample();
		int x=obj.add(); 
		System.out.println(x);
 
	}
}
