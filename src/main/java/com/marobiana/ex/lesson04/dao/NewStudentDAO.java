package com.marobiana.ex.lesson04.dao;

import org.springframework.stereotype.Repository;

import com.marobiana.ex.lesson04.model.NewStudent;

@Repository
public interface NewStudentDAO {
	
	
	public int insertStudent(NewStudent student);
}
