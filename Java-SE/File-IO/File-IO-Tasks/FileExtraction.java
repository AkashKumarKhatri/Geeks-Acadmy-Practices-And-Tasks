//Write a program to perform file Extraction operation;

import java.io.*;
class FileExtraction {
	public static void main(String arg[]) throws IOException {
		PrintWriter pw = new PrintWriter("output.txt");
		BufferedReader br1 = new BufferedReader(new FileReader("input.txt"));
		String line = br1.readLine();
		while(line != null) {
			boolean availabe = false;
			BufferedReader br2 = new BufferedReader(new FileReader("delete.txt"));
			String target  = br2.readLine();
			while(target != null) {
				if(line.equals(target)) {
					availabe = true;
					break;
				}
				target = br2.readLine();
			}
			if(availabe == false) {
				pw.println(line);
			}
			line = br1.readLine();
		}
		pw.flush();
	}
}