public class chick {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int count = 0;
		for (int i = 0; i <= 20; i++) {
			for (int j = 0; j < 34; j++) {
				for (int k = 0; k <= 300; k += 3) {
					if ((5 * i + 3 * j + k / 3 == 100) && (i + k + j == 100)) {
						System.out.println("ĸ��:" + i + "����:" + j + "С��:" + k);
						count++;
					}
				}
			}
		}
		System.out.println("����" + count + "������");
	}

}
