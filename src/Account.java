public class Account {
	private String id;
	private String xm;
	private double balance;

	public void withdraw(double a) {
		balance -= a;
	}

	public void deposit(double b) {
		balance += b;
	}

	public void query(String id, String xm) {
		this.id = id;
		this.xm = xm;
		System.out.println(id + " " + xm + "µÄÓà¶îÎª" + balance);
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getXm() {
		return xm;
	}

	public void setXm(String xm) {
		this.xm = xm;
	}

	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Account c = new Account();
		c.setId("123456");
		c.setXm("zhangsan");
		c.setBalance(2000);
		c.deposit(10000);
		c.withdraw(5000);
		c.query("123456", "zhangsan");
	}

}
