import java.io.*;
class FileInputStreamDemo {
	public static void main(String arg[]) throws IOException {
		FileInputStream file = new FileInputStream("C:\\Users\\Akaash\\Desktop\\s.docx");
		FileOutputStream file2 = new FileOutputStream("C://Users//Akaash//Desktop//Done2.txt");
		int data = 0;
		while((data=file.read())!=-1){
			file2.write((char)data);
			System.out.println("Printing");
		}
		//System.out.print((char)data);
		//file.close();
		
	}
}