import java.io.*;
class FileWriterDemo3 {
	public static void main(String arg[]) throws IOException{
		/* File file = new File("khatri");
		System.out.println(file.exists());
		if(file.exists()==false) {
			file.mkdir();
		}
		System.out.println(file.exists()); */
		FileWriter w = new FileWriter("Sachal.txt",true);
		w.write("Wah Wadera Wah");
		w.flush();
		w.close();
	}
}