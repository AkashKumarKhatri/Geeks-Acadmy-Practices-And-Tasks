import java.io.*;
import java.util.*;

class Task {
	public static void main(String arg[])throws IOException {
		Scanner ob = new Scanner(System.in);
		
		System.out.println("Enter Your Name : ");
		String name = ob.nextLine();
		
		System.out.println("Enter Your Roll No :");
		String rollNo = ob.nextLine();
		
		File f = new File("Student.txt");
		FileWriter fw = new FileWriter(f,true);
		fw.write(name+"\t"+rollNo+"\t");
		fw.flush();
		System.out.println("\nData Saved\n");
		System.out.println("Name "+name);
		System.out.println("Roll No "+rollNo);
		System.out.println(f.length());
		
		
		fw.close();
				
	}
}