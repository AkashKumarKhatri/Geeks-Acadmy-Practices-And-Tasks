abstract class Animal {
	abstract void sound();
	void eat() {
		System.out.println("Herbivous");
	}
}
class Dog extends Animal {
	void sound() {
		System.out.println("bhaoo bhaoo");
	} 
	void eat() {
		System.out.println("Carnivous");
	}
	void smell() {
		System.out.println("Smell");
	}
	public static void main(String arg[]) {
		Animal ob = new Dog();
		ob.sound();
		ob.eat();
		//ob.smell();         // Error: variable ob of type Animal
	}
}