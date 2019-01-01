import java.io.*;

class FileReaderDemo1 {
	public static void main(String arg[])throws IOException {
		File f = new File("Sachal.txt");
		FileReader r = new FileReader(f);
		int i = r.read();
		while(i!=-1) {	
			System.out.print((char)i);
			i = r.read();
		}
	}
}