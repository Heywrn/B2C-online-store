
public class Example1 implements Runnable {
	int ticket=10;
	@Override
	public void run() {
		// TODO Auto-generated method stub
		try
		{
		Thread.currentThread().sleep(10);	
		}
		catch(Exception e){}
		while(ticket>0)
		{
		System.out.println(Thread.currentThread().getName()+"��Ʊ����>"+ticket--);
		}
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Example1 r=new Example1();
		Thread th1=new Thread(r);
		Thread th2=new Thread(r);
		Thread th3=new Thread(r);
		th1.setName("����1");
		th2.setName("����2");
		th3.setName("����3");
		th1.start();
		th2.start();
		th3.start();
	}
}
