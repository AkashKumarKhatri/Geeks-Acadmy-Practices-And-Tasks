class Employee {
	int salary;
	String name;
	
	Employee(){
		salary = 10;
		name = "SALEEM";
	}
	Employee(String name, int salary) {
		this.salary = salary;
		this.name = name;
	}
	public static void main(String arg[]) {
		Employee saleem = new Employee();
		System.out.println(saleem.salary);
		System.out.println(saleem.name);
		
		Employee aakash = new Employee("Akash",70);
		System.out.println(aakash.salary);
		System.out.println(aakash.name);
	}
	
	
}