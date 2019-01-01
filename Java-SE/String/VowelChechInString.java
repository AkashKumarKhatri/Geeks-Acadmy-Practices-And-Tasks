class VowelChechInString {
	public static void main(String arg[]) {
		String str = " Hello ";
		int vowel = 0;
		for(int i=0;i<str.length();i++) {
			if(str.charAt(i)=='A' || str.charAt(i)=='a' || str.charAt(i)=='E' || str.charAt(i)=='e' || str.charAt(i)=='i' || str.charAt(i)=='I' || str.charAt(i)=='o' || 
			str.charAt(i)=='O' || str.charAt(i)=='u' || str.charAt(i)=='U') {
				vowel++;
			}
		}
		System.out.println(vowel);
	}
}