public class Ex3_2 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		final int ARRAY_SIZE = 10;
		int a[] = new int[ARRAY_SIZE];
		int max = 0;
		int index = 0; // �洢���Ԫ�ص�λ��
		for (int i = 0; i < a.length; i++) // a.length=10
		{
			a[i] = (int) (Math.random() * 10); // ��������������������Ա��ֵ
			System.out.print(" " + a[i]);
		}
		System.out.println();
		max = a[0];
		for (int j = 1; j < ARRAY_SIZE; j++) {
			if (a[j] > max) // �жϵ�ǰλ�õ����Ƿ�������ֵMax
			{
				max = a[j]; // �滻��ǰ���ֵ����ס��Ӧλ��
				index = j;
			}
		}
		System.out.println("A[" + index + "] has maximum value" + a[index]);
	}

}
