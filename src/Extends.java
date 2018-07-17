class Aa
{
int i,j;
void showij()
{
	System.out.println("i and j: " + i + " " + j);
}
}
class Bb extends Aa
{
int k;
void showk()
{
	System.out.println("k:"+k);
}
void sum()
{
	System.out.println("i+j+k: " + (i+j+k));
}
}
public class Extends
{
		
			  public static void main(String args[]) {
			    Aa superOb = new Aa();
			    Bb subOb = new Bb();
			    superOb.i = 10;
			    superOb.j = 20;
			    System.out.println("Contents of superOb: ");
			    superOb.showij();
			    System.out.println();
			    subOb.i = 7;
			    subOb.j = 8;
			    subOb.k = 9; 
			    System.out.println("Contents of subOb: ");
			    subOb.showij();
			    subOb.showk();
			    System.out.println();
			    System.out.println("Sum of i, j and k in subOb:");
			    subOb.sum();
			  }
	/**
	 * @param args
	 */
	
		// TODO Auto-generated method stub

	}
