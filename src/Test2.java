class Books {
		  String name;  
		  Books(String na){
		    this.name=na; 
		 }
		}
		class Book extends Books{
		  String author;
		 Book(String author){
		     super("john");  //���û����䣬�������
		     this.author=author;   //�ֲ������ͳ�Ա����ͬ��ʱ�� this���ڱ�ʾ��ǰ����
		 }
		}
public class Test2 {
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Book b=new Book("mike");
		   System.out.println("name="+b.name);
		   System.out.println("author="+b.author);
	}

}
