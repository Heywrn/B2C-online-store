public class ContimueLabel {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		outer: for (int i = 1; i < 10; i++) {
			for (int j = 1; j < 10; j++) {
				if (j > i) {
					System.out.println();
					continue outer;
				}
				System.out.print(" " + i * j);
			}
			System.out.println();
		}

	}

}
