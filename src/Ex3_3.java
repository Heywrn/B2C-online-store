public class Ex3_3 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int total = 0;
		int arr[][] = new int[3][4];
		for (int i = 0; i < arr.length; i++) // ��ʼ������ʾ��ά����
		{
			for (int j = 0; j < arr[i].length; j++) {
				arr[i][j] = i + j;
				System.out.print(" " + arr[i][j]);
			}
			System.out.println();
		}
		for (int i = 0; i < arr.length; i++)
			for (int j = 0; j < arr[i].length; j++) {
				total += arr[i][j];
			}
		System.out.println("The Sum is:" + total);
	}

}
