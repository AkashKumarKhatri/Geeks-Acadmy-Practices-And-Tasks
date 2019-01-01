package programs;

public class WrapperDemo {

	public static void main(String[] args) {
		
		int a=10;  // primitive type variable
		Integer b=new Integer(30); // object type 
		System.out.println(a==b);
		System.out.println(b.MAX_VALUE);
		System.out.println(b.SIZE);
		System.out.println(b.MIN_VALUE);
		Integer c= new Integer(30);
		System.out.println(b.compareTo(c));
		String s="10";
		System.out.println(Integer.parseInt(s)+c);
		Float f=10.5f; // Float Object
		System.out.println(f.intValue());
		System.out.println(b.floatValue());
		String d="10.5";
		System.out.println(Float.parseFloat(d));
		System.out.println(Double.parseDouble(d));
		Double ff=Double.parseDouble(d);
		Integer aa=10;
		Integer bb=10;
		System.out.println(String.valueOf(aa)+String.valueOf(bb));
		System.out.println(aa.toString() + bb.toString());
		Character cc='a';
		Character dd='e';
		System.out.println(cc.equals(dd));
		System.out.println(Character.SIZE);
		System.out.println(Character.MIN_VALUE);
		System.out.println(Character.MAX_VALUE);
		Character n='?';
		
		System.out.println((int)n.MAX_VALUE);
		
		Boolean bbc=false;
		Boolean bbv=true;
		System.out.println(bbc.booleanValue());
		System.out.println(Boolean.compare(bbc,bbv));
		
		
		System.out.println(Byte.SIZE);
		System.out.println(Byte.MAX_VALUE);
		System.out.println(Byte.MIN_VALUE);
		Byte bytee =123;
		
		Integer io=10;
		
		
		// TODO Auto-generated method stub

	}

}
