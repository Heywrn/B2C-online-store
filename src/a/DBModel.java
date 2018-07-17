package a;
import java.sql.*;
public class DBModel {
	Connection conn=null;
	Statement stmt=null;
	ResultSet rs=null;
	public DBModel()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/logistics?useUnicode=true&characterEncoding=utf-8","root","123456");
		}catch(Exception e)
	{System.out.println(e.toString());}
	}
    public ResultSet query(String sql)
    {
    	try
    	{
    	stmt=conn.createStatement();
    	rs=stmt.executeQuery(sql);
    	}
    	catch(Exception e){}
    	return rs;
    }
    public void update(String sql)
    {
    	try
    	{
    		stmt=conn.createStatement();
    		stmt.executeUpdate(sql);
    	}catch(Exception e){}
    }
    public void close()
    {
    	try
    	{
    	conn.close();
    	stmt.close();
    	rs.close();
    	}catch(Exception e){}
}
}
