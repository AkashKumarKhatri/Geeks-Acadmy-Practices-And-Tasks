import java.io.*;
class FileReaderDemo {
	public static void main(String arg[]) throws IOException{
		File f = new File("Khatri.txt");
		
		FileReader fr = new FileReader(f);
		int ch = 0;
		while((ch=fr.read())!=-1) {
			System.out.print((char)ch);
		}
		fr.close();
	}
}