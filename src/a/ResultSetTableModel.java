package a;

import java.sql.*;
import java.util.Vector;
import javax.swing.table.AbstractTableModel;
class ResultSetTableModel extends AbstractTableModel
{
public Vector columnHeaders;
public Vector tableData;
public int i;
public ResultSetTableModel(ResultSet rset)throws SQLException
{
Vector rowData;
ResultSetMetaData rsmd=rset.getMetaData();
int count=rsmd.getColumnCount();
columnHeaders=new Vector(count);
tableData=new Vector();
for(i=1;i<=count;i++)
{ columnHeaders.addElement(rsmd.getColumnName(i));}
tableData.addElement(columnHeaders);
while(rset.next())
{
rowData=new Vector(count);
for(i=1;i<=count;i++)
{ rowData.addElement(rset.getObject(i)); }
tableData.addElement(rowData);
}
}
public int getColumnCount()
{ return columnHeaders.size(); }
public int getRowCount()
{ return tableData.size(); }
public Object getValueAt(int row,int column)
{
Vector rowData=(Vector)(tableData.elementAt(row));
return rowData.elementAt(column);
}
public boolean isCellEditable(int row,int column)
{ return false; }
public String getColumnName(int column)
{ return (String)(columnHeaders.elementAt(column)); }
}