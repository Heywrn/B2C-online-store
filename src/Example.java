
public class Example extends Thread {
	int ticket=10;
	public void run()
	{
		try
		{
		sleep(10);	
		}
		catch(Exception e){}
		while(ticket>0)
		{
		System.out.println(this.getName()+"��Ʊ����>"+ticket--);
		}
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Example th1=new Example();
		Example th2=new Example();
		Example th3=new Example();
		th1.setName("����1");
		th2.setName("����2");
		th3.setName("����3");
		th1.start();
		th2.start();
		th3.start();
	}

}
