class A {  int i, j;
A(int a, int b) {
  i = a;     j = b;
}
void show(String msg) {
  System.out.println(msg + i + " " + j);
}
}
class B extends A {
int k;
B(int a, int b, int c) {
  super(a, b);
  k = c;  }  
void show(String msg) {
  System.out.println(msg + k);
}}
public class TestA {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A subOb = new B(1, 2, 3);
	    subOb.show("This is B: "); // 调用B中的方法show()
	    A sub = new A(1, 2);
	    sub.show("This is A: "); // 调用A中的方法show()
	  }
	}

