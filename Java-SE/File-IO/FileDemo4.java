import java.io.*;

class FileDemo4 {
	public static void main (String arg[]) throws IOException {
		int count=0;
		File f = new File("D:\\JAVA2");
		String[] s = f.list();
		for(String s1 : s)	{
			File f1 = new File(f,s1);
			if(f1.isDirectory()) {
				count++;
				System.out.println(s1);	
			}
		}
		System.out.println(count);	
		
	}
}