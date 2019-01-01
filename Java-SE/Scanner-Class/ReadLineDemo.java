import java.io.*;
class ReadLineDemo {
	public static void main(String arg[]) throws IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String read = br.readLine("Enter Your Name");
		System.out.println(read);
	}
}