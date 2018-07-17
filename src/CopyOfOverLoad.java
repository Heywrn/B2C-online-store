
public class CopyOfOverLoad {
	int i=3,j=4;
	int sum()
	{
		return i+j;
	}
	int sum(int a,int b)
	{
		return a+b;
	}
	int sum(int a,int b,int c)
	{
		return a+b+c;
	}
	double sum(double a,double b)
	{
		return a+b;
	}
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		CopyOfOverLoad o=new CopyOfOverLoad();
		System.out.println(o.sum());
		System.out.println(o.sum(5, 6));
		System.out.println(o.sum(5,8,4));
		System.out.println(o.sum(3.2,2.15));
		// TODO Auto-generated method stub
	}

}
