import java.io.*;
class FileInputStreamDemo2 {
	public static void main(String arg[]) throws IOException{
		File file = new File("C:\\Users\\Akaash\\Desktop\\File IO\\FileOutputStreamDemo2.txt");
		FileInputStream readFile = new FileInputStream(file);
		int i = 0;
		while((i = readFile.read())!=-1) {
			System.out.print((char)i);
		}
	}
}