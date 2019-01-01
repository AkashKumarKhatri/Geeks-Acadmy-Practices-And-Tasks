//Write a program to merge Data from All .txt files present in  E:\\Input into output.txt.

import java.io.*;
class TotalFileMerger {
	public static void main(String arg[])throws IOException{
		File f = new File("File IO Tasks");
		String[] s = f.list();
		PrintWriter pw = new PrintWriter(new FileWriter("file5.txt"));
		for(String s1 : s) {
			BufferedReader br = new BufferedReader(new FileReader(new File(f,s1)));
			String line = br.readLine();
			while(line != null) {
				pw.println(line);
				line = br.readLine();
			}
			pw.flush();
		}
		pw.close();
	}
}