public class TestUser {
	private String xm;
	private String mm;

	public void setXm(String xm) {
		this.xm = xm;
	}

	public void setMm(String mm) {
		this.mm = mm;
	}

	public boolean check(String a, String b) {
		if (a.equals("xyz") && b.equals("123"))
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
		TestUser c = new TestUser();
		c.setXm("wrn");
		c.setMm("asd12345");
		if (c.check("wrn", "asd12345"))
			System.out.println("success!");
		else
			System.out.println("failure!");
	}

}
