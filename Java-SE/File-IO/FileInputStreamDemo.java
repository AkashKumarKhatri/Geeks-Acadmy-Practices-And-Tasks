import java.io.*;
class FileInputStreamDemo {
	public static void main(String arg[]) throws IOException{
		File file = new File("C:\\Users\\Akaash\\Desktop\\File IO\\FileOutputStreamDemo2.txt");
		FileInputStream readFile = new FileInputStream(file);
		int i = readFile.read();
		System.out.println((char)i);
		readFile.close();		
	}
}