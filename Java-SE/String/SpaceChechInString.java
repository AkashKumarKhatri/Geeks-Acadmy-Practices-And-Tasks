class SpaceChechInString {
	public static void main(String arg[]) {
		String str = " Hello janu I am the best budy ";
		int space = 0;
		for(int i=0;i<str.length();i++) {
			if(str.charAt(i)==' ') {
				space++;
			}
		}
		System.out.println(space);
	}
}


