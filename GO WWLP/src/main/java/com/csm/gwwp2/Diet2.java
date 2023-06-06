package com.csm.gwwp2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.csm.gwwp.DBManager;
import com.csm.gwwp1.Diet;


public class Diet2 {
	
	public int insert(Diet d) throws ClassNotFoundException, SQLException{
		int result=-1;
		
		DBManager dbMgr=new DBManager();
		Connection conn=dbMgr.getConnection();
		
		String sql="INSERT INTO `gwwpid`.`diet` (`D_type`,`num_of_feed`) "+"VALUES (?,?)";
		
		PreparedStatement pstmt=conn.prepareStatement(sql);
		
		pstmt.setString(1, d.getDietType());
		pstmt.setString(2, d.getNumberofFeeds());
	
		
		result=pstmt.executeUpdate();
		return result;
		
}
	public ArrayList<Diet> fetchAll()throws ClassNotFoundException, SQLException{

	    ArrayList<Diet> diet = new ArrayList<Diet>();// collection of course
	    Diet d;

	    //1. get connection
	            DBManager dbMgr=new DBManager();
	            Connection conn=dbMgr.getConnection();

	    //2.prepare statement

	            String sql = "SELECT * FROM diet";
	            PreparedStatement pstmt=conn.prepareStatement(sql);
	            ResultSet rs=pstmt.executeQuery();



	            //Resultset => ArrayList
	            //column values of Resultset getString("database column name")

	          
	            //populate the array list from the record of the course table
	            while (rs.next())
	            {
	                d=new Diet(
	                rs.getInt("Diet_ID"),
	                rs.getString("D_type"),
	                rs.getString("num_of_feed"));
	              

	                diet.add(d);//add entity object into collection
	            }

	            return diet;
			}

}
