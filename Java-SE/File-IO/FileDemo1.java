import java.io.*;

class FileDemo1 {
	public static void main (String arg[]) throws IOException {
		/* File f = new File("D:\\text.txt");
		System.out.println(f.exists());
		f.createNewFile();
		System.out.println(f.exists()); */
		
		File f = new File("Akash");
		System.out.println(f.exists());
		f.mkdir();
		System.out.println(f.exists());
	}
}