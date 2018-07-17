public class SampleContinue {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		for (int i = 1; i < 20; i++) {
			System.out.print(i + " ");// 这里需要注意，用的是print，而不是println！！！
			if (i % 5 != 0)
				continue;
			System.out.println("");
		}
	}

}
