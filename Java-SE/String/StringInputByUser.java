import java.util.*;
//import java.io.Console;

class StringInputByUser {
	public static void main(String arg[]) {
		Scanner ob = new Scanner(System.in);
		//try{
		//Console c=System.console(); 
		System.out.println("Enter Your Favourat Paragraph");
		String paragraph = ob.nextLine();
		//String paragraph=c.readLine();
		
		//String paragraph = "skadksd lasdla kklsada 789456";
		String[] word = paragraph.split(" ");
		System.out.println(paragraph);
		int space = 0;
		int vowel = 0;
		int digit = 0;
		int word1 = 0;
		int len = paragraph.length();
		for(int i=0;i<len;i++) {
			if(paragraph.charAt(i)==' ') {
				space++;
			}
			
			if(paragraph.charAt(i)>='0' && paragraph.charAt(i)<='9'){
				digit++;
			}
			if(paragraph.charAt(i)=='A' || paragraph.charAt(i)=='a' || paragraph.charAt(i)=='E' || paragraph.charAt(i)=='e' || paragraph.charAt(i)=='i' || paragraph.charAt(i)=='I' || paragraph.charAt(i)=='o' || 
				paragraph.charAt(i)=='O' || paragraph.charAt(i)=='u' || paragraph.charAt(i)=='U') {
				vowel++;
			}
		}
		
		System.out.println("No. of Word = "+word.length+" No. of Vowel = "+vowel+" No. of Space = "+space+" No. of Digit = "+digit); 
		//}catch(Exception e){}
	}
}