package com.marobiana.ex.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marobiana.ex.lesson04.dao.NewUserDAO;
import com.marobiana.ex.lesson04.model.NewUser;

@Service
public class NewUserBO {
	
	@Autowired
	private NewUserDAO newUserDAO;
	
	public int addUser(String name, String yyyymmdd, String email, String introduce) {
		return newUserDAO.insertUser(name, yyyymmdd, email, introduce);
	}
	
	//한가지 행만 선택해서 가죠오기
	public NewUser getUser(int id) {
		return newUserDAO.selectUser(id);
	}
}