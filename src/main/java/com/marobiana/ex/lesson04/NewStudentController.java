package com.marobiana.ex.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.marobiana.ex.lesson04.bo.NewStudentBO;
import com.marobiana.ex.lesson04.model.NewStudent;

@Controller
public class NewStudentController {
	
	@Autowired
	private NewStudentBO newStudentBO;
	
	@RequestMapping("/lesson04/ex02/1")
	public String addStudentView() {
		return "lesson04/addStudent"; //lesson04/ex01/1를 입력하면 addStudent.jsp로 이동
	}
	
	//@ResponseBody // jsp경로를 return하는게 아니면 ResponseBody
	//@RequestMapping(path = "/lesson04/ex02/add_student", method = RequestMethod.POST) // path, method속성은 그동안 생략하고 있었음
	@PostMapping("/lesson04/ex02/add_student") // 위와 같은 뜻, post로만 요청을 받는다
	public String addStudent(
			@ModelAttribute NewStudent student, // ModelAttribute는 @RequestParam대신 사용하는데 @RequestParam처럼 파라미터들을 하나씩 
			Model model									// 입력하지 않아도 자동으로 jsp의 name과 model의 파라미터 이름을 비교해서 자동으로 가져온다.
			) {
		
		int count = newStudentBO.addStudent(student);
		
		model.addAttribute("result", student); // jsp에서 student안에 있는 값을 사용할 수 있도록
		
		return "lesson04/studentInfo";
	}
}
