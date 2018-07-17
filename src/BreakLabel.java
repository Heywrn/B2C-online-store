
public class BreakLabel {
	public static void main(String[] args) {
		boolean t = true;
		third: {
			System.out.println("Before the break.");
			if (t)
				break third;
			System.out.println("This won't execute.");
		}
		System.out.println("This won't execute.");
		System.out.println("This is aftersecond block.");

}
}
