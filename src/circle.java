public class circle {
	float x, y;
	float r;

	double getArea() {
		return r * r * 3.1415926;
	}

	double getCircle() {
		return 2 * r * 3.1415926;
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		circle c = new circle();
		c.r = 3;
		c.x = 0;
		c.y = 0;
		System.out.println("Area=" + c.getArea());
		System.out.println("Circumference=" + c.getCircle());
	}

}
