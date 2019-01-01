// Write a programe to perform file merge operation where merging should be done by line by line alternatively.
import java.io.*;
class FileMerger {
	public static void main(String arg[]) throws IOException{
		PrintWriter pw = new PrintWriter(new File("file4.txt"));
		BufferedReader br1 = new BufferedReader(new FileReader("file1.txt"));
		BufferedReader br2 = new BufferedReader (new FileReader("file2.txt"));
		String line1 = br1.readLine();
		String line2 = br2.readLine();
		while((line1 != null) || (line2 != null)) {
			if(line1 != null) {
				pw.println(line1);
				line1 = br1.readLine();
			}
			if(line2 != null) {
				pw.println(line2);
				line2 = br2.readLine();
			}
		}
		pw.flush();
		br1.close();
		br2.close();
		pw.close();
	}
}