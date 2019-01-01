import java.io.*;
class SerializableDemo implements Serializable {
	Integer userId;
	String userName;
	SerializableDemo(Integer userId, String userName) {
		this.userId = userId;
		this.userName = userName;
	}
	public static void main(String arg[])throws Exception {
		SerializableDemo sd = new SerializableDemo(11,"Aakash");
		FileOutputStream fos = new FileOutputStream("D://JAVA2//Sir Sadakat Ruk//File IO//IO Streams//khatri.txt");
		ObjectOutputStream oos = new ObjectOutputStream(fos);
		oos.writeObject(sd);
		System.out.println("Serializable Successfull");
		FileInputStream fis = new FileInputStream("D:\\JAVA2\\Sir Sadakat Ruk\\File IO\\IO Streams\\khatri.txt");
		ObjectInputStream ois = new ObjectInputStream(fis);
		SerializableDemo sd1 = (SerializableDemo)ois.readObject();
		System.out.println(sd1.userId+"---"+sd1.userName);
		System.out.println("DeSerializable Successfull");
	}
}