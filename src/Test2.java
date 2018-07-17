class Books {
		  String name;  
		  Books(String na){
		    this.name=na; 
		 }
		}
		class Book extends Books{
		  String author;
		 Book(String author){
		     super("john");  //如果没有这句，编译出错
		     this.author=author;   //局部变量和成员变量同名时， this用于表示当前对象
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
