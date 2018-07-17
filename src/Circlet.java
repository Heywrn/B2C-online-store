
public class Circlet extends Shape {
	private double r;
	public Circlet(double i)
	{
		r=i;
	}
	@Override
	public double getArea() {
		// TODO Auto-generated method stub
		return 3.142*r*r;
	}

	@Override
	public double getCircle() {
		// TODO Auto-generated method stub
		return 2*r*3.142;
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
	}

}
