// My method

class ReverseString {
	public static void main(String arg[]) {
		String str = "Abid is a good boy";
		String str2 = "";
		for(int i=str.length()-1;i>=0;i--) {
			str2 += str.charAt(i);
		}
		String[] replace = str2.split(" ");
		for(int i=replace.length-1;i>=0;i--){
			System.out.print(replace[i]+" ");
		}
	}
}


// Sir Sadakat Ruk method
 
/*  class ReverseString {
	public static void main(String arg[]) {
		String str = "Abid is a good boy";
		String finals = "";
		String[] words = str.split(" ");
		for(int i=0 ;i<words.length;i++) {
			char[] c = words[i].toCharArray();
			for(int j=c.length-1;j>=0;j--) {
				finals += c[j];
			}
			//finals +=" ";
		}
		System.out.println(finals);
	
	}
}

 */