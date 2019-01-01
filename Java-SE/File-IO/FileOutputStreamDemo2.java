import java.io.*;
class FileOutputStreamDemo2 {
	public static void main(String arg[])throws IOException {
		File f = new File("C:\\Users\\Akaash\\Desktop\\File IO\\FileOutputStreamDemo2.txt");
		f.createNewFile();
		FileOutputStream fwtr = new FileOutputStream(f);
		String s1 = "Hello the Java IO World";
		byte[] b = s1.getBytes();
		fwtr.write(b);
		fwtr.flush();
		fwtr.close();
	}
}