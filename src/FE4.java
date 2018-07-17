import java.io.*;
public class FE4 {

	/**
	 * @param args
	 */
	public static void main(String[] args)
			throws Exception {
		// TODO Auto-generated method stub
		File f=new File("mytext.txt");
		if(!f.exists())
			f.createNewFile();
		//System.out.println(f.getAbsolutePath());		
		FileReader fr=new FileReader(f);
		BufferedReader br= new BufferedReader(fr);
		String temp="";
		while((temp=br.readLine())!=null)
			System.out.println(temp);
		br.close();
		fr.close();
		
	}

}
