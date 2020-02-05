package com.kh.petner.member.pet.model.service;

import static com.kh.petner.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.petner.member.pet.model.dao.PetDao;
import com.kh.petner.member.pet.model.vo.Pet;

public class PetService {
	private PetDao pDao = new PetDao();
	public int insertPet(Pet p) {
		int result =0;
		Connection con = getConnection();
		
		result = pDao.insertPet(con,p);
		
		if(result>0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		return result;
	}

}
