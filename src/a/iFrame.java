package a;

import java.awt.Dimension;
import java.awt.Rectangle;
import java.sql.ResultSet;

import javax.swing.JDesktopPane;
import javax.swing.JFrame;
import javax.swing.JTable;
import javax.swing.WindowConstants;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;

import a.DBModel;

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
public class iFrame extends javax.swing.JInternalFrame {
	private JTable jTable1;
	ResultSet rset=null;

	/**
	* Auto-generated main method to display this 
	* JInternalFrame inside a new JFrame.
	*/
	public static void main(String[] args) {
		JFrame frame = new JFrame();
		iFrame inst = new iFrame();
		JDesktopPane jdp = new JDesktopPane();
		jdp.add(inst);
		jdp.setPreferredSize(inst.getPreferredSize());
		frame.setContentPane(jdp);
		frame.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
		frame.pack();
		frame.setVisible(true);
	}
	
	public iFrame() {
		super();
		DBModel db=new DBModel();
	    rset=db.query("select * from ts where cbs like '%清华大学%'");
		initGUI();
	}
	
	private void initGUI() {
		try {
			this.setPreferredSize(new java.awt.Dimension(498, 300));
			this.setBounds(0, 0, 498, 300);
			setVisible(true);
			getContentPane().setLayout(null);
			setClosable(true);
			{
				JTable jTable1=new JTable();
				getContentPane().add(jTable1);
				jTable1.setModel(new ResultSetTableModel(rset));
				jTable1.setBounds(58, 34, 376, 191);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
