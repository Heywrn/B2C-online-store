
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
		//	System.out.println("��������Ϊ0��");
		//}
		//catch(NumberFormatException e)
		//{
		//	System.out.println("��������Ϊ��ֵ��");
		//}
		//catch(ArrayIndexOutOfBoundsException e)
		//{
		//	System.out.println("�����������");
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
