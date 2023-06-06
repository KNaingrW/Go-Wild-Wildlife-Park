package com.csm.gwwp2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.csm.gwwp.DBManager;
import com.csm.gwwp1.Animal;


public class Animal2 {

	public int insert(Animal a) throws ClassNotFoundException, SQLException{
		int result=-1;
		
		DBManager dbMgr=new DBManager();
		Connection conn=dbMgr.getConnection();
		String sql="INSERT INTO `gwwpid`.`animals` (`A_name`,`Gender`,`Year_Arrived`, `E_ID`, `K_ID`, `S_ID`, `D_ID`) "+"VALUES (?,?,?,?,?,?,?)";
		
		PreparedStatement pstmt=conn.prepareStatement(sql);
		
		pstmt.setString(1, a.getAnimalName());
		pstmt.setString(2, a.getAnimalGender());
		pstmt.setString(3, a.getYearArrived());
		pstmt.setInt(4, a.getEnclosureId());
		pstmt.setInt(5, a.getKeeperId());
		pstmt.setInt(6, a.getSpeciesId());
		pstmt.setInt(7, a.getDietId());
		result=pstmt.executeUpdate();
		return result;
		
}
	public ArrayList<Animal> fetchAll()throws ClassNotFoundException, SQLException{

	    ArrayList<Animal> animal = new ArrayList<Animal>();// collection of course
	    Animal a;

	    //1. get connection
	            DBManager dbMgr=new DBManager();
	            Connection conn=dbMgr.getConnection();

	    //2.prepare statement

	            String sql = "SELECT * FROM animals";
	            PreparedStatement pstmt=conn.prepareStatement(sql);
	            ResultSet rs=pstmt.executeQuery();



	            //Resultset => ArrayList
	            //column values of Resultset getString("database column name")

	          
	            //populate the array list from the record of the course table
	            while (rs.next())
	            {
	                a=new Animal(
	                		rs.getInt("Animal_ID"),
	    					rs.getString("A_Name"),
	    					rs.getString("Gender"),
	    					rs.getString("Year_Arrived"),
	    					rs.getInt("E_ID"),
	    					rs.getInt("K_ID"),
	    					rs.getInt("S_ID"),
	    					rs.getInt("D_ID"));
	    					
	                animal.add(a);//add entity object into collection
	            }

	            return animal;
			}
			}
		
