class Aaa
{
  Aaa() 
  { 
    System.out.println("Inside A's constructor.");
  }
}
class Bbb extends Aaa 
{// ����A���Ը�����.
  Bbb() 
  {
    System.out.println("Inside B's constructor.");
  }
}
class C extends Bbb 
{// ������һ������̳�B.
  C() 
  {
    System.out.println("Inside C's constructor.");
  }
}

public class CallingCons {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		   C c = new C();
	}

}
