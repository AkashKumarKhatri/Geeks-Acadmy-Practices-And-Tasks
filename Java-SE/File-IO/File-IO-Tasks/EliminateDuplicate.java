// Write a program to remove duplicates present in the Given file.

import java.io.*;
class EliminateDuplicate {
	public static void main(String arg[]) throws IOException {
		PrintWriter pw = new PrintWriter("output1.txt");
		BufferedReader br1 = new BufferedReader(new FileReader(new File("input1.txt")));
		String line = br1.readLine();
		while(line != null) {
			boolean available = false;
			BufferedReader br2 = new BufferedReader(new FileReader(new File("output1.txt")));
			String target = br2.readLine();
			while(target != null) {
				if(line.equals(target)) {
					available = true;
					break;
				}
				target = br2.readLine();
			}
			if(available == false) {
				pw.println(line);
				pw.flush();
			}
			line = br1.readLine();
		}
		br1.close();
		pw.close();
	}
}