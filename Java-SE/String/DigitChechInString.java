/* class DigitChechInString {
	public static void main(String arg[]) {
		String str = "Khatri678 Malhi 675";
		int count = 0;
		int len = str.length();
		for(int a=0;a<str.length();a++) {
			if(Character.isDigit(str.charAt(a))){
				count++;
			}
		}
		System.out.println("Number og Digits is "+count);
	}
} */


class DigitChechInString {
	public static void main(String arg[]) {
		String str = "Khatri678 Malhi 675";
		int count = 0;
		int len = str.length();
		for(int a=0;a<str.length();a++) {
			if(str.charAt(a)>='0' && str.charAt(a)<='9'){
				count++;
			}
		}
		System.out.println("Number of Digits is "+count);
	}
}

