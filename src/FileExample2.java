import java.io.*;
public class FileExample2 {

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
		FileWriter fw=new FileWriter(f);
		BufferedWriter bw=new BufferedWriter(fw);
		bw.write("�ҵĴ�ѧ\n");
		bw.append("���մ�ѧ");
		bw.flush();
		bw.close();
		System.out.println(f.length());
		
	}

}
