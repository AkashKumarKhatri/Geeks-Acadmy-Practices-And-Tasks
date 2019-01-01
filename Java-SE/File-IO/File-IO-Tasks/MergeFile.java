// Write a programe to merge Data from 2 files into a 3rd file.

import java.io.*;
class MergeFile {
	public static void main(String arg[]) throws IOException {
		BufferedReader br = new BufferedReader(new FileReader(new File("file1.txt")));
		PrintWriter pw = new PrintWriter("file3.txt");
		String line = br.readLine();
		while(line!=null) {
			pw.println(line);
			line = br.readLine();
		}
		br = new BufferedReader(new FileReader("file2.txt"));
		line = br.readLine();
		while(line != null) {
			pw.println(line);
			line = br.readLine();
		}
		pw.flush();
		br.close();
		pw.close();
	}
}