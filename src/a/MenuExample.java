package a;
import java.awt.BorderLayout;
import java.awt.event.InputEvent;
import java.awt.event.KeyEvent;
import javax.swing.ImageIcon;

import javax.swing.JCheckBoxMenuItem;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JPopupMenu;
import javax.swing.JRadioButtonMenuItem;
import javax.swing.JSeparator;
import javax.swing.JTextField;
import javax.swing.KeyStroke;

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
public class MenuExample extends javax.swing.JFrame {

	{
		//Set Look & Feel
		try {
			javax.swing.UIManager.setLookAndFeel(javax.swing.UIManager.getSystemLookAndFeelClassName());
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	private JMenuBar Jmenubar;
	private JMenuItem jMenuItem5;
	private JMenuItem jMenuItem4;
	private JSeparator jSeparator1;
	private JRadioButtonMenuItem jRadioButtonMenuItem2;
	private JRadioButtonMenuItem jRadioButtonMenuItem1;
	private JCheckBoxMenuItem jCheckBoxMenuItem2;
	private JCheckBoxMenuItem jCheckBoxMenuItem1;
	private JMenu jMenu2;
	private JMenuItem jMenuItem2;
	private JMenuItem jMenuItem1;
	private JMenu jMenu1;
	private JMenuItem jMenuItem6;
	private JMenu jMenu3;
	private JMenu jMenu5;
	private JMenuItem jMenuItem9;
	private JSeparator jSeparator3;
	private JMenuItem jMenuItem10;
	private JMenuItem jMenuItem11;
	private JMenuItem jMenuItem12;
	private JMenuItem jMenuItem7;
	private JMenu jMenu6;
	private JMenuItem jMenuItem8;
	private JPopupMenu jPopupMenu1;
	private JMenu jMenu4;
	private JSeparator jSeparator2;

	/**
	* Auto-generated main method to display this JFrame
	*/
	public static void main(String[] args) {
		SwingUtilities.invokeLater(new Runnable() {
			public void run() {
				MenuExample inst = new MenuExample();
				inst.setLocationRelativeTo(null);
				inst.setVisible(true);
			}
		});
	}
	
	public MenuExample() {
		super();
		initGUI();
	}
	
	private void initGUI() {
		try {
			setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
			getContentPane().setLayout(null);
			{
				jPopupMenu1 = new JPopupMenu();
				setComponentPopupMenu(this, jPopupMenu1);
				{
					jMenu6 = new JMenu();
					jPopupMenu1.add(jMenu6);
					jMenu6.setText("\u6587\u4ef6");
					{
						jMenuItem9 = new JMenuItem();
						jMenu6.add(jMenuItem9);
						jMenuItem9.setText("\u6253\u5f00");
					}
					{
						jMenuItem10 = new JMenuItem();
						jMenu6.add(jMenuItem10);
						jMenuItem10.setText("\u5173\u95ed");
					}
				}
				{
					jMenuItem12 = new JMenuItem();
					jPopupMenu1.add(jMenuItem12);
					jMenuItem12.setText("\u590d\u5236");
					jMenuItem12.setIcon(new ImageIcon(getClass().getClassLoader().getResource("a/I2ZW6QD655ANGSPCYDINAQ3.jpg")));
				}
				{
					jMenuItem8 = new JMenuItem();
					jPopupMenu1.add(jMenuItem8);
					jMenuItem8.setText("\u7c98\u8d34");
				}
				{
					jSeparator3 = new JSeparator();
					jPopupMenu1.add(jSeparator3);
				}
				{
					jMenuItem11 = new JMenuItem();
					jPopupMenu1.add(jMenuItem11);
					jMenuItem11.setText("\u9000\u51fa");
				}
			}
			{
				Jmenubar = new JMenuBar();
				setJMenuBar(Jmenubar);
				{
					jMenu1 = new JMenu();
					Jmenubar.add(jMenu1);
					jMenu1.setText("\u6587\u4ef6");
					{
						jMenuItem1 = new JMenuItem();
						jMenu1.add(jMenuItem1);
						jMenuItem1.setText("\u65b0\u5efa\u6587\u4ef6(N)");
						jMenuItem1.setAutoscrolls(true);
						jMenuItem1.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_N,InputEvent.CTRL_MASK));
					}
					{
						jMenuItem2 = new JMenuItem("打开文件",'o');
						jMenu1.add(jMenuItem2);
						jMenuItem2.setText("\u6253\u5f00\u6587\u4ef6(O)");
						jMenuItem2.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_O,InputEvent.CTRL_MASK));
					}
					{
						jMenuItem7 = new JMenuItem();
						jMenu1.add(jMenuItem7);
						jMenuItem7.setText("\u5173\u95ed\u6587\u4ef6(C)");
						jMenuItem7.setIcon(new ImageIcon(getClass().getClassLoader().getResource("a/button_cancel.png")));
						jMenuItem7.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_C,InputEvent.CTRL_MASK));
					}
					{
						jMenu2 = new JMenu();
						jMenu1.add(jMenu2);
						jMenu2.setText("\u6587\u4ef6\u683c\u5f0f");
						{
							jCheckBoxMenuItem1 = new JCheckBoxMenuItem();
							jMenu2.add(jCheckBoxMenuItem1);
							jCheckBoxMenuItem1.setText("Java\u6587\u4ef6");
						}
						{
							jCheckBoxMenuItem2 = new JCheckBoxMenuItem();
							jMenu2.add(jCheckBoxMenuItem2);
							jCheckBoxMenuItem2.setText("TXT\u6587\u4ef6");
						}
						{
							jSeparator1 = new JSeparator();
							jMenu2.add(jSeparator1);
						}
						{
							jRadioButtonMenuItem1 = new JRadioButtonMenuItem();
							jMenu2.add(jRadioButtonMenuItem1);
							jRadioButtonMenuItem1.setText("\u53ea\u8bfb");
						}
						{
							jRadioButtonMenuItem2 = new JRadioButtonMenuItem();
							jMenu2.add(jRadioButtonMenuItem2);
							jRadioButtonMenuItem2.setText("\u53ef\u5199");
						}
					}
					{
						jMenuItem4 = new JMenuItem();
						jMenu1.add(jMenuItem4);
						jMenuItem4.setText("\u4fdd\u5b58\u6587\u4ef6(S)");
						jMenuItem4.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_S,InputEvent.CTRL_MASK));
					}
					{
						jMenuItem5 = new JMenuItem();
						jMenu1.add(jMenuItem5);
						jMenuItem5.setText("\u6587\u4ef6\u53e6\u5b58\u4e3a");
					}
					{
						jSeparator2 = new JSeparator();
						jMenu1.add(jSeparator2);
					}
					{
						jMenuItem6 = new JMenuItem();
						jMenu1.add(jMenuItem6);
						jMenuItem6.setText("\u9000\u51fa");
					}
				}
				{
					jMenu3 = new JMenu();
					Jmenubar.add(jMenu3);
					jMenu3.setText("\u7f16\u8f91");
				}
				{
					jMenu4 = new JMenu();
					Jmenubar.add(jMenu4);
					jMenu4.setText("\u89c6\u56fe");
				}
				{
					jMenu5 = new JMenu();
					Jmenubar.add(jMenu5);
					jMenu5.setText("\u5e2e\u52a9");
				}
			}
			pack();
			setSize(500, 400);
		} catch (Exception e) {
		    //add your error handling code here
			e.printStackTrace();
		}
	}
	
	/**
	* Auto-generated method for setting the popup menu for a component
	*/
	private void setComponentPopupMenu(final java.awt.Component parent, final javax.swing.JPopupMenu menu) {
		parent.addMouseListener(new java.awt.event.MouseAdapter() {
			public void mousePressed(java.awt.event.MouseEvent e) {
				if(e.isPopupTrigger())
					menu.show(parent, e.getX(), e.getY());
			}
			public void mouseReleased(java.awt.event.MouseEvent e) {
				if(e.isPopupTrigger())
					menu.show(parent, e.getX(), e.getY());
			}
		});
	}

}
