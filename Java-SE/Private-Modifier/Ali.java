
/****************************************  Method 1 *********************************************/
// Student class men name ko private nhn kiya h is liye hm ise Ali k class ko values de rahy hn to koe error nhn aa rah h mgr Method 2 ko dekhen..


/*class Student {
	String name;
	public void getName() {
		System.out.println("My name is "+name);
	}
}
class Ali extends Student {
	public static void main(String arg[]) {
			Ali a = new Ali();
			a.name = "Ali";
			a.getName();
	}
}*/

/******************************************** Method 2 ******************************************/
// Student class men name ko private kiya h is liye hm ise Ali k class values de rahy hn to error aa rah hn is liye hm ne is men setter ki help lee h


class Student {
	private String name;
	
	public void setName(String name) {
		this.name = name;
	}
	public void getName() {
		System.out.println("My name is "+name);
	}
}
class Ali extends Student {
	public static void main(String arg[]) {
			Ali a = new Ali();
			a.setName("Ali");
			a.getName();
	}
}