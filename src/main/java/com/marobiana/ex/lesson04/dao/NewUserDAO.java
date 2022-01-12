package com.marobiana.ex.lesson04.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.marobiana.ex.lesson04.model.NewUser;

@Repository
public interface NewUserDAO {
	
	public int insertUser(@Param("name") String name, 
			@Param("yyyymmdd") String yyyymmdd, 
			@Param("email") String email, 
			@Param("introduce") String introduce);
	
	//한 행만 가져오기
	public NewUser selectUser(@Param("id") int id);
	
	//이름 중복체크(lesson06)
	public int selectCountName(@Param("name") String name); //중복되는 갯수 return이라서 int타입(이름이 두개면 중복이니까) / @Param("name") = xml에서 쓸 이름
}
