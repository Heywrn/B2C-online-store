import java.io.*;
public class FileExample {

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
		FileOutputStream fos=new FileOutputStream(f);
		BufferedOutputStream bos=new BufferedOutputStream(fos);
		String s="java½Ì³Ì";
		byte b[]=s.getBytes();
		bos.write(b);
		bos.flush();
		bos.close();
		fos.close();
		System.out.println(f.length());
		
	}

}
