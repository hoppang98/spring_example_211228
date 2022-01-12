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
	
	//한가지 행만 선택해서 가져오기
	public NewUser getUser(int id) {
		return newUserDAO.selectUser(id);
	}
	
	//이름 중복체크(lesson06)
	public boolean isDuplicateName(String name) { //boolean타입으로 리턴받는다
		int count = newUserDAO.selectCountName(name);	//dao에서 int타입으로 받는데 bo에서 보낼 때는 boolean타입으로 보내줘야해서 bo에서 타입을 바꿔줘야한다.
		if(count == 0) { // 중복이 아닌 상태
			return false;
		} else {
			return true;
		}
		
	}
	
}