public class Ex3_2 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		final int ARRAY_SIZE = 10;
		int a[] = new int[ARRAY_SIZE];
		int max = 0;
		int index = 0; // 存储最大元素的位置
		for (int i = 0; i < a.length; i++) // a.length=10
		{
			a[i] = (int) (Math.random() * 10); // 产生随机数，并对数组成员赋值
			System.out.print(" " + a[i]);
		}
		System.out.println();
		max = a[0];
		for (int j = 1; j < ARRAY_SIZE; j++) {
			if (a[j] > max) // 判断当前位置的数是否大于最大值Max
			{
				max = a[j]; // 替换当前最大值，记住对应位置
				index = j;
			}
		}
		System.out.println("A[" + index + "] has maximum value" + a[index]);
	}

}
