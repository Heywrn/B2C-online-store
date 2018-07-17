
public class ExceptionExample {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try
		{
			int n=Integer.valueOf(args[0]);
			System.out.println(10/n);
		}
		//catch(ArithmeticException e)
		//{
		//	System.out.println("除数不能为0！");
		//}
		//catch(NumberFormatException e)
		//{
		//	System.out.println("参数必须为数值！");
		//}
		//catch(ArrayIndexOutOfBoundsException e)
		//{
		//	System.out.println("请输入参数！");
		//}
		catch(Exception e)
		{
			System.out.println(e.toString());
		}
		finally
		{
			System.out.println("wrn");
		}

	}

}
