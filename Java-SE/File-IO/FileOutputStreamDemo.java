import java.io.*;
class FileOutputStreamDemo {
	public static void main(String arg[])throws IOException {
		File f = new File("C:\\Users\\Akaash\\Desktop\\File IO\\FileOutputStreamDemo.txt");
		f.createNewFile();
		FileOutputStream fwtr = new FileOutputStream(f);
		fwtr.write(65);
		fwtr.flush();
		fwtr.close();
	}
}