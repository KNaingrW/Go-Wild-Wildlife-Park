package com.csm.gwwp2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.csm.gwwp.DBManager;
import com.csm.gwwp1.Enclosure;



public class Enclosure2 {
	
	public Enclosure getById(int id) throws SQLException,
	ClassNotFoundException {
	String sql ;
	//1. get Connection
	DBManager dbMgr = new DBManager();
	Connection conn = dbMgr.getConnection();
	//2. prepare the statement
	sql = "SELECT * FROM `gwwpid`.`enclosure` WHERE (`Enclosure_ID` =?);"; 
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1,id);
	ResultSet rs = pstmt.executeQuery();
	Enclosure enclosure = null;
	while(rs.next()) {
	enclosure = new Enclosure
	(rs.getInt("Enclosure_ID"),
	rs.getString("Location"),
	rs.getString("E_type"));
	}
	return enclosure;
	}
	
	public int update(Enclosure e) throws ClassNotFoundException,
	SQLException{
		int result = -1;
		DBManager dbMgr=new DBManager();
		Connection conn=dbMgr.getConnection();
		String sql= "UPDATE `gwwpid`.`enclosure` SET `Location` = ?, `E_type` = ? WHERE (`Enclosure_ID` = ?);";

		
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, e.getEnclosureLocation());
		pstmt.setString(2, e.getEnclosureType());
		pstmt.setInt(3, e.getEnclosureId());
		
		result= pstmt.executeUpdate();
		return result;
	}
	
	public int delete(int id) throws ClassNotFoundException, SQLException{
		int result=-1;
		//get connection
		DBManager dbMgr=new DBManager();
		Connection conn=dbMgr.getConnection();
		//prepare statement
		String sql = "DELETE FROM `gwwpid`.`enclosure` WHERE (`Enclosure_ID` =?);";
		
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, id);
		//execute statement
		result= pstmt.executeUpdate();
		return result;
	}
	
	
	public int insert(Enclosure e) throws ClassNotFoundException, SQLException{
		int result=-1;
		
		DBManager dbMgr=new DBManager();
		Connection conn=dbMgr.getConnection();
		
		String sql="INSERT INTO `gwwpid`.`enclosure` (`Location`,`E_type`) "+"VALUES (?,?)";
		
		PreparedStatement pstmt=conn.prepareStatement(sql);
		
		pstmt.setString(1, e.getEnclosureType());
		pstmt.setString(2, e.getEnclosureLocation());
	
		
		result=pstmt.executeUpdate();
		return result;
		
}
	public ArrayList<Enclosure> fetchAll()throws ClassNotFoundException, SQLException{

	    ArrayList<Enclosure> enclosure = new ArrayList<Enclosure>();// collection of course
	    Enclosure e;

	    //1. get connection
	            DBManager dbMgr=new DBManager();
	            Connection conn=dbMgr.getConnection();

	    //2.prepare statement

	            String sql = "SELECT * FROM enclosure";
	            PreparedStatement pstmt=conn.prepareStatement(sql);
	            ResultSet rs=pstmt.executeQuery();



	            //Resultset => ArrayList
	            //column values of Resultset getString("database column name")

	         
	            //populate the array list from the record of the course table
	            while (rs.next())
	            {
	                e=new Enclosure(
	                rs.getInt("Enclosure_ID"),
	                rs.getString("Location"),
	                rs.getString("E_type"));
	              

	                enclosure.add(e);//add entity object into collection
	            }

	            return enclosure;
			}

}
