import java.io.*;

class FileDemo6 {
	public static void main (String arg[]) throws IOException {
		
		File f = new File("D:\\JAVA2\\asdasd.txt");
		System.out.println(f.delete());
	}
}