package com.csm.gwwp2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.csm.gwwp.DBManager;
import com.csm.gwwp1.Keeper;


public class Keeper2 {
	
	public Keeper getById(int id) throws SQLException,
	ClassNotFoundException {
	String sql ;
	//1. get Connection
	DBManager dbMgr = new DBManager();
	Connection conn = dbMgr.getConnection();
	//2. prepare the statement
	sql = "SELECT * FROM `gwwpid`.`keeper` WHERE (`Keeper_ID` =?);"; 
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1,id);
	ResultSet rs = pstmt.executeQuery();
	Keeper keeper = null;
	while(rs.next()) {
	keeper = new Keeper
	(rs.getInt("Keeper_ID"),
	rs.getString("K_name"),
	rs.getString("Date_of_birth"),
	rs.getString("K_rank"));
	}
	return keeper;
	}
	
	public int update(Keeper k) throws ClassNotFoundException,
	SQLException{
		int result = -1;
		DBManager dbMgr=new DBManager();
		Connection conn=dbMgr.getConnection();
		String sql= "UPDATE `gwwpid`.`keeper` SET `K_name` = ?, `Date_of_birth` = ?, `K_rank` = ? WHERE (`Keeper_ID` = ?);";

		
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, k.getKeeperName());
		pstmt.setString(2, k.getDateofBirth());
		pstmt.setString(3, k.getKeeperRank());
		pstmt.setInt(4, k.getKeeperId());
		
		result= pstmt.executeUpdate();
		return result;
	}
	
	public int delete(int id) throws ClassNotFoundException, SQLException{
		int result=-1;
		//get connection
		DBManager dbMgr=new DBManager();
		Connection conn=dbMgr.getConnection();
		//prepare statement
		String sql = "DELETE FROM `gwwpid`.`keeper` WHERE (`Keeper_ID` =?);";
		
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, id);
		//execute statement
		result= pstmt.executeUpdate();
		return result;
	}
	
	public int insert(Keeper k) throws ClassNotFoundException, SQLException{
		int result=-1;
		
		DBManager dbMgr=new DBManager();
		Connection conn=dbMgr.getConnection();
		
		String sql="INSERT INTO `gwwpid`.`keeper` (`K_name`,`Date_of_birth`,`K_rank`) "+"VALUES (?,?,?)";
		
		PreparedStatement pstmt=conn.prepareStatement(sql);
		
		pstmt.setString(1, k.getKeeperName());
		pstmt.setString(2, k.getDateofBirth());
		pstmt.setString(3, k.getKeeperRank());
	
		
		result=pstmt.executeUpdate();
		return result;
		
}
	public ArrayList<Keeper> fetchAll()throws ClassNotFoundException, SQLException{

	    ArrayList<Keeper> keeper = new ArrayList<Keeper>();// collection of course
	    Keeper k;

	    //1. get connection
	            DBManager dbMgr=new DBManager();
	            Connection conn=dbMgr.getConnection();

	    //2.prepare statement

	            String sql = "SELECT * FROM keeper";
	            PreparedStatement pstmt=conn.prepareStatement(sql);
	            ResultSet rs=pstmt.executeQuery();



	            //Resultset => ArrayList
	            //column values of Resultset getString("database column name")

	           
	            //populate the array list from the record of the course table
	            while (rs.next())
	            {
	                k=new Keeper(
	                rs.getInt("Keeper_Id"),
	                rs.getString("K_name"),
	                rs.getString("Date_of_birth"),
	                rs.getString("K_rank"));

	                keeper.add(k);//add entity object into collection
	            }

	            return keeper;


	}
	
}
