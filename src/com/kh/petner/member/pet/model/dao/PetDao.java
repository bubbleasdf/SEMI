package com.kh.petner.member.pet.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import static com.kh.petner.common.JDBCTemplate.close;

import com.kh.petner.member.pet.model.vo.Pet;

public class PetDao {

	Properties prop;
	
	public PetDao() {
		
		String filePath=PetDao.class.getResource("config/pet-query.properties").getPath();		
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public int insertPet(Connection con, Pet p) {
		int result = 0;
		String sql = prop.getProperty("insertPet");
		Statement stmt = null;
		
		try {
			stmt=con.createStatement();
			result=stmt.executeUpdate(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(stmt);
		}
		
		return result;
	}

}
