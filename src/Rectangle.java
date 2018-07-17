
public class Rectangle extends Shape {
	private double w;
	private double l;
	Rectangle(double a,double b)
			{
		w=a;
		l=b;
			}
	@Override
	public double getArea() {
		// TODO Auto-generated method stub
		return w*l;
	}

	@Override
	public double getCircle() {
		// TODO Auto-generated method stub
		return 2*(w+l);
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
