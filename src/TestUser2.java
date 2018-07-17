public class TestUser2 {
	private String xm;
	private String mm;

	public void setXm(String xm) {
		this.xm = xm;
	}

	public void setMm(String mm) {
		this.mm = mm;
	}

	public String getXm() {
		return xm;
	}

	public String getMm() {
		return mm;
	}

	public boolean check(String a, String b) {
		if (a.equals(xm) && b.equals(mm))
			return true;
		else
			return false;
	}

	public void printAll() {

		System.out.println(xm + " " + mm);
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		TestUser2 c = new TestUser2();
		c.setXm("wrn");
		c.setMm("asd12345");
		if (c.check(c.getXm(), c.getMm()))
			System.out.println("success!");
		else
			System.out.println("failure!");
		c.printAll();
	}
}
