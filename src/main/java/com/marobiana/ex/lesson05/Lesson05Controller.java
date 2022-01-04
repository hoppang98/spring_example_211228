package com.marobiana.ex.lesson05;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Lesson05Controller {
	
	// JSTL로 jsp에서 c로 변수 정의하고 쓰기
	@GetMapping("/lesson05/ex01")
	public String ex01() {
		return "/lesson05/ex01";
	}
}
