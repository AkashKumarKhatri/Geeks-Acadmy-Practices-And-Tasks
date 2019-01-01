import java.io.Console;  
class ReadStringTest{    
	public static void main(String args[]){    
		Console c=System.console();    
		System.out.println("Enter your name: ");    
		String n=c.readLine("Mane");    
		System.out.println("Welcome "+n);
			
		char[] ch = c.readPassword("Enter Your Password");
		System.out.println(ch);
	}    
}  