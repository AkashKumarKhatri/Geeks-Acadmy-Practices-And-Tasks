import java.util.*;
class Palindrome {
	public static void main(String arg[]) {
		Scanner ob = new Scanner(System.in);
		String str = ob.next();
		String reverse = "";
		 
		for(int i=str.length()-1;i>=0;i--){
			reverse = reverse + str.charAt(i);
		}
		System.out.println(reverse);
		if(reverse.equalsIgnoreCase(str)){
			System.out.println("The string is Palindrome");
		}
		else{
			System.out.println("Not Palindrome");
		}
	}
}