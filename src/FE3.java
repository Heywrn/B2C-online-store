import java.io.*;
public class FE3 {

	/**
	 * @param args
	 */
	public static void main(String[] args)
			throws Exception {
		// TODO Auto-generated method stub
		File f=new File("mytext.txt");
		if(!f.exists())
			f.createNewFile();
		System.out.println(f.getAbsolutePath());		
		FileInputStream fis=new FileInputStream(f);
		BufferedInputStream bis= new BufferedInputStream(fis);
		byte b[]=new byte[10000];
		String temp="";
		int n=0;
		if((n=bis.read(b))!=-1)
			temp=new String(b,0,n);
		System.out.println(temp);	
		fis.close();
		bis.close();
	}

}
