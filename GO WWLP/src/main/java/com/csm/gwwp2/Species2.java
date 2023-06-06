package com.csm.gwwp2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.csm.gwwp.DBManager;
import com.csm.gwwp1.Keeper;
import com.csm.gwwp1.Species;

public class Species2 {

	public int insert(Species s) throws ClassNotFoundException, SQLException{
		int result=-1;
		
		DBManager dbMgr=new DBManager();
		Connection conn=dbMgr.getConnection();
		
		String sql="INSERT INTO `gwwpid`.`species` (`S_type`,`S_group`,`Lifestyle`, `Conservation_status`) "+"VALUES (?,?,?,?)";
		
		PreparedStatement pstmt=conn.prepareStatement(sql);
		
		pstmt.setString(1, s.getSpeciesType());
		pstmt.setString(2, s.getSpeciesGroup());
		pstmt.setString(3, s.getLifeStyle());
		pstmt.setString(4, s.getConservationStatus());
	
		
		result=pstmt.executeUpdate();
		return result;
		
}
	public ArrayList<Species> fetchAll()throws ClassNotFoundException, SQLException{

	    ArrayList<Species> specie = new ArrayList<Species>();// collection of course
	    Species s;

	    //1. get connection
	            DBManager dbMgr=new DBManager();
	            Connection conn=dbMgr.getConnection();

	    //2.prepare statement

	            String sql = "SELECT * FROM species";
	            PreparedStatement pstmt=conn.prepareStatement(sql);
	            ResultSet rs=pstmt.executeQuery();



	            //Resultset => ArrayList
	            //column values of Resultset getString("database column name")

	       
	            //populate the array list from the record of the course table
	            while (rs.next())
	            {
	                s=new Species(
	                rs.getInt("Species_ID"),
	                rs.getString("S_type"),
	                rs.getString("S_group"),
	                rs.getString("Lifestyle"),
	                rs.getString("Conservation_status"));

	                specie.add(s);//add entity object into collection
	            }

	            return specie;
}
}
