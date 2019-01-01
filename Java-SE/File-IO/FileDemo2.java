import java.io.*;

class FileDemo2 {
	public static void main (String arg[]) throws IOException {
		
		File f = new File("Akash","abc.txt");
		System.out.println(f.exists());
	}
}