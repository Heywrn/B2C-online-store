
public class People { 
	private String xm;
	private String xb;
	private String csrq;
	private String nl;
	People()
	{
		
	}
	People(String xm,String xb,String csrq,String nl)
	{
		this.xm=xm;
		this.xb=xb;
		this.csrq=csrq;
		this.nl=nl;
	}
	public String getXm() {
		return xm;
	}
	public void setXm(String xm) {
		this.xm = xm;
	}
	public String getXb() {
		return xb;
	}
	public void setXb(String xb) {
		this.xb = xb;
	}
	public String getCsrq() {
		return csrq;
	}
	public void setCsrq(String csrq) {
		this.csrq = csrq;
	}
	public String getNl() {
		return nl;
	}
	public void setNl(String nl) {
		this.nl = nl;
	}
	public void PrintAll()
	{
		System.out.println("姓名："+xm+" "+"性别："+xb+" "+"出生日期："+csrq+" "+"年龄："+" "+nl);
	}
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		People p1=new People();
		p1.setXm("WangRn");
		p1.setXb("male");
		p1.setCsrq("19941201");
		p1.setNl("20");
		p1.PrintAll();
		People p2=new People("LiSi","male","19720311","42");
		p2.PrintAll();
		People p3=new People("ZhangSan","male","19700125","44");
		p3.PrintAll();
	}

}
