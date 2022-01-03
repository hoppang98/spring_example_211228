package com.marobiana.ex.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marobiana.ex.lesson04.dao.NewStudentDAO;
import com.marobiana.ex.lesson04.model.NewStudent;

@Service
public class NewStudentBO {
	@Autowired
	private NewStudentDAO newStudentDAO;
	
	public int addStudent(NewStudent student) {
		return newStudentDAO.insertStudent(student);
	}
}
