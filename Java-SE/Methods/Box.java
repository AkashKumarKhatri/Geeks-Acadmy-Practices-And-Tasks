class Box {
	double length;
	double width;
	double height;
	
	Box(double l, double w) {
		length = l;
		width = w;
	}
	double getArea() {
		double area = length * width;
		return area;
	}
	double getVolume(double h) {
		height = h;
		double volume = getArea() * h;
		return volume;
	}
	public static void main(String arg[]) {
		Box b1 = new Box(2,4);
		System.out.println(b1.getArea());
		System.out.println(b1.getVolume(2));
	}
}