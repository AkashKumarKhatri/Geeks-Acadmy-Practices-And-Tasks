class FirstStringReplace {
   public static void main(String args[]){
       //String str = new String("This is my Book");
	   String str = new String("My .com site is BeginnersBook.com");
       System.out.print("String after replacing com with net :" );
       System.out.println(str.replaceFirst("com", "net"));

       System.out.print("String after replacing Site name:" );
       System.out.println(str.replaceFirst("Beginners(.*)", "XYZ.com"));
   }
}