public class VIPAccount extends Account {
	private String VIP;

	public String getVIP() {
		return VIP;
	}

	public void setVIP(String vIP) {
		VIP = vIP;
	}

	public void printAll() {
		System.out.println(super.getId() + " " + super.getXm() + " "
				+ super.getBalance() + " " + getVIP());
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		VIPAccount c = new VIPAccount();
		c.setId("123456");
		c.setXm("zhangsan");
		c.setBalance(2000);
		c.setVIP("02");
		c.deposit(10000);
		c.withdraw(5000);
		c.printAll();
		VIPAccount ac = new VIPAccount();
		ac.setId("12345678");
		ac.setXm("lisi");
		ac.setBalance(9000);
		ac.setVIP("01");
		ac.deposit(10000);
		ac.withdraw(5000);
		ac.printAll();
	}

}
