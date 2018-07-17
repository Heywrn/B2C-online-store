package a;
import com.cloudgarden.layout.AnchorLayout;
import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JTextField;
import java.sql.ResultSet;
//import a.DBModel;

import javax.swing.WindowConstants;
import javax.swing.SwingUtilities;


/**
* This code was edited or generated using CloudGarden's Jigloo
* SWT/Swing GUI Builder, which is free for non-commercial
* use. If Jigloo is being used commercially (ie, by a corporation,
* company or business for any purpose whatever) then you
* should purchase a license for each developer using Jigloo.
* Please visit www.cloudgarden.com for details.
* Use of Jigloo implies acceptance of these licensing terms.
* A COMMERCIAL LICENSE HAS NOT BEEN PURCHASED FOR
* THIS MACHINE, SO JIGLOO OR THIS CODE CANNOT BE USED
* LEGALLY FOR ANY CORPORATE OR COMMERCIAL PURPOSE.
*/
public class Frame1 extends javax.swing.JFrame {
	private JButton jButton1;
	private JButton jButton2;
	private JTextField jTextField2;
	private JTextField jTextField1;
	ResultSet rs=null;

	/**
	* Auto-generated main method to display this JFrame
	*/
	public static void main(String[] args) throws Exception  {
		new Frame1();
	}
	
	public Frame1()  throws Exception {
		super();
		DBModel  db=new DBModel();
		rs=db.query("select  * from book");
		rs.next();
		initGUI();
	}
	
	private void initGUI() {
		try {
			setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
			getContentPane().setLayout(null);
			{
				jButton1 = new JButton();
				getContentPane().add(jButton1);
				jButton1.setText("\u5173\u95ed");
				jButton1.setBounds(232, 212, 62, 24);
				jButton1.addActionListener(new ButtonEvent());
				//jButton1.addActionListener(new ActionListener() {
				//	public void actionPerformed(ActionEvent evt) {
				//		jButton1ActionPerformed(evt);
				//	}
				//}
				
			}
			{
				jTextField1 = new JTextField();
				getContentPane().add(jTextField1);
				jTextField1.setText("jTextField1");
				jTextField1.setBounds(114, 41, 67, 24);
				jTextField1.setText(rs.getString("sh"));
			}
			{
				jTextField2 = new JTextField();
				getContentPane().add(jTextField2);
				jTextField2.setText("jTextField2");
				jTextField2.setBounds(114, 99, 67, 24);
				jTextField2.setText(rs.getString("sm"));
			}
			{
				jButton2 = new JButton();
				getContentPane().add(jButton2);
				jButton2.setText("\u4e0b\u4e00\u6761");
				jButton2.setBounds(121, 153, 96, 34);
				jButton2.addActionListener(new ActionListener() {
					public void actionPerformed(ActionEvent evt) {
						jButton2ActionPerformed(evt);
					}
				});
			}
			pack();
			this.setSize(344, 294);
			this.show();
		} catch (Exception e) {
		    //add your error handling code here
			e.printStackTrace();
		}
	}
	private void jButton2ActionPerformed(ActionEvent evt) {
		try
		{
		rs.next();
		jTextField1.setText(rs.getString("sh"));
		jTextField2.setText(rs.getString("sm"));
		}catch(Exception e){}
		
	}
//	private void jButton1ActionPerformed(ActionEvent evt) {
//		System.out.println("jButton1.actionPerformed, event="+evt);
//		//TODO add your code for jButton1.actionPerformed
//	}
	class ButtonEvent implements ActionListener
	{
		public void actionPerformed(ActionEvent evt) {
		    System.exit(0);
		}
	}
}
