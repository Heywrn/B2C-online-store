
public class Point {
	int x,y;
	Point()
	{
		x=10;
		y=10;
	}
	Point(int x,int y)
	{
		this.x=x;
		this.y=y;
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Point p=new Point();
		System.out.println(p.x+" "+p.y);
		Point p1=new Point(20,30);
		System.out.println(p1.x+" "+p1.y);

	}

}
