class Vehicle {
	public void drive() {
		System.out.println("Vehicle: drive");
	}
}
class Car extends Vehicle {
	public void drive() {
		System.out.println("Car: drive");
	}
}

public class Test3 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Vehicle v;
		Car c;
		v = new Vehicle();
		c = new Car();
		v.drive();
		c.drive();
		v = c;
		v.drive();


	}

}
