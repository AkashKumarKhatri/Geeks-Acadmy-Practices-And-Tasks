/* class WordCheckInString {
	public static void main(String arg[]) {
		String str = "Pakistan i the Top currupt Country In the World";
		char[] str1 = str.toCharArray();
		for(char temp : str1) {
			System.out.println(temp);
		}
		System.out.println(str1.length);
	}
}
 */

class WordCheckInString {
	public static void main(String arg[]) {
		String str = "Pakistan i the Top currupt Country In the";
		String[] str1 = str.split(" ");
		/* for(String temp : str1) {
			System.out.println(temp);
		} */
		System.out.println(str1.length);
	}
}