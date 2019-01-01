class StringDemo {
	public static void main(String arg[]) {
		String str1 = new String("JAVA");
		char[] name = {'R','A','M','A','N'};
		String str2 = new String(name);
		String str3 = new String(str2);
		System.out.println(str1);
		System.out.println(name);
		System.out.println(str2);
		System.out.println(str3.length());
		System.out.println(str3.hashCode());
	}
	
}