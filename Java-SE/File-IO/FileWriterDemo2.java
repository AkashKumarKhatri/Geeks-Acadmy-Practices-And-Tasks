import java.io.*;
class FileWriterDemo2 {
	public static void main(String arg[])throws IOException {
		File file = new File("Sachal.txt");
		System.out.println(file.exists());
		if(file.exists()==false) {
			file.createNewFile();
		}
		System.out.println(file.exists());
		System.out.println(file.isDirectory());
		System.out.println(file.length());
	}
}