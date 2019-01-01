class Vehicle {
	
	String color;
	int size;
	int speed;
	
	private Vehicle() {}
	
	static Vehicle vehicle = new Vehicle();
	
	public static Vehicle getVehicle() {
		return new Vehicle();
	}
}

class TestVehicle {
	public static void main(String arg[]) {
		Vehicle v = Vehicle.getVehicle();
		v.color = "Dark Red";
		v.size = 100;
		v.speed = 140;
		
		System.out.println("Color "+v.color+" Speed "+v.speed+" Size "+v.size);
	}
}

/*class Vehicle {
	
	String color;
	int size;
	int speed;
	
	//private Vehicle() {}
	
	private static Vehicle vehicle = new Vehicle();
	
	public static Vehicle getVehicle() {
		return new Vehicle();
	}
}

class TestVehicle {
	public static void main(String arg[]) {
		Vehicle v = Vehicle.getVehicle();
		Vehicle v1 = new Vehicle();
		v.color = "Dark Red";
		v.size = 100;
		v.speed = 140;
		
		System.out.println("Color "+v.color+" Speed "+v.speed+" Size "+v.size);
	}
}*/