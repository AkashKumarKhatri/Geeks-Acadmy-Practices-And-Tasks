import java.io.*;
class FileWriterDemo {
	public static void main(String arg[]) throws IOException{
		File f = new File("Khatri.txt");
		
		FileWriter fw = new FileWriter(f);
		fw.write("Hello Greeks Accademy");
		
		fw.flush();
		fw.close();
	}
}